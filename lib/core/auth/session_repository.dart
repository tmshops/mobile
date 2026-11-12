import 'dart:async';
import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';

import '../database/hive_registry.dart';
import '../error/exceptions.dart';
import '../error/failures.dart';
import 'session_data.dart';
import 'token_storage.dart';
import 'user_profile.dart';

/// The customer's session, shared by every feature (TZ §2: AuthBloc).
///
/// Lives in `core` like the cart: the profile tab, checkout, orders and the
/// router guard all need it. Login (a feature) starts a session with
/// [start]; everything else only reads it.
abstract interface class SessionRepository {
  /// The signed-in profile after each change; `null` = guest.
  Stream<UserProfile?> get changes;

  /// Reads the saved session without the network, so the app opens signed
  /// in even offline. `null` = guest.
  Future<UserProfile?> restore();

  /// Fresh profile from the server (balance and debt change often).
  /// An expired session signs out and gives a [ServerFailure].
  Future<Either<Failure, UserProfile>> refresh(String languageCode);

  Future<void> start(SessionTokens tokens, UserProfile profile);

  /// The server changed the profile (name, email, phone): every screen
  /// shows the new one.
  Future<void> update(UserProfile profile);

  /// Revokes the session and wipes personal data; language and region
  /// stay (TZ §7.2).
  Future<void> signOut();
}

@LazySingleton(as: SessionRepository)
class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl(
    this._remote,
    this._tokens,
    @Named(HiveBoxes.account) this._box,
  );

  final SessionRemoteDataSource _remote;
  final TokenStorage _tokens;
  final LazyBox<String> _box;

  final _changes = StreamController<UserProfile?>.broadcast();

  static const _profileKey = 'profile';
  static const unauthorized = 'unauthorized';

  @override
  Stream<UserProfile?> get changes => _changes.stream;

  @override
  Future<UserProfile?> restore() async {
    try {
      if (await _tokens.read() == null) return null;
      final raw = await _box.get(_profileKey);
      if (raw == null) return null;
      final profile = UserProfileModel.fromJson(
        jsonDecode(raw) as Map<String, dynamic>,
      ).toEntity();
      _changes.add(profile);
      return profile;
    } on Object {
      // Unreadable session: start as a guest rather than fail to open.
      return null;
    }
  }

  @override
  Future<Either<Failure, UserProfile>> refresh(String languageCode) async {
    try {
      final tokens = await _tokens.read();
      if (tokens == null) {
        return left(const ServerFailure(code: unauthorized));
      }
      final profile = (await _remote.profile(
        languageCode,
        tokens.access,
      )).toEntity();
      await _cache(profile);
      _changes.add(profile);
      return right(profile);
    } on NetworkException {
      return left(const NetworkFailure());
    } on ServerException catch (e) {
      if (e.code == unauthorized) await signOut();
      return left(ServerFailure(code: e.code, message: e.message));
    } on CacheException {
      return left(const CacheFailure());
    }
  }

  @override
  Future<void> start(SessionTokens tokens, UserProfile profile) async {
    try {
      await _tokens.write(tokens);
      await _cache(profile);
    } on CacheException {
      // Signed in for this launch even if the device could not keep it.
    }
    _changes.add(profile);
  }

  @override
  Future<void> update(UserProfile profile) async {
    try {
      await _cache(profile);
    } on CacheException {
      // Shown for this launch; the next refresh brings it back anyway.
    }
    _changes.add(profile);
  }

  @override
  Future<void> signOut() async {
    try {
      final tokens = await _tokens.read();
      if (tokens != null) await _remote.revoke(tokens.refresh);
    } on AppException {
      // Offline: the token expires on its own; sign out locally anyway.
    }
    try {
      await _tokens.clear();
    } on CacheException {
      // Nothing more can be done; the profile below is still wiped.
    }
    await _box.clear().catchError((_) => 0);
    _changes.add(null);
  }

  Future<void> _cache(UserProfile profile) async {
    try {
      await _box.put(
        _profileKey,
        jsonEncode(UserProfileModel.fromEntity(profile).toJson()),
      );
    } on Object catch (e) {
      throw CacheException(e);
    }
  }
}
