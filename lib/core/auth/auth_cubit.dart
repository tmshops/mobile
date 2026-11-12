import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../error/failures.dart';
import 'session_repository.dart';
import 'user_profile.dart';

part 'auth_cubit.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  /// The saved session is still being read at launch.
  const factory AuthState.unknown() = AuthUnknown;

  const factory AuthState.guest() = AuthGuest;

  const factory AuthState.signedIn(UserProfile profile) = AuthSignedIn;

  const AuthState._();

  UserProfile? get profile => switch (this) {
    AuthSignedIn(:final profile) => profile,
    _ => null,
  };
}

/// Guest or customer, for the whole app (TZ §2). Follows the session, so a
/// login, refresh or sign-out anywhere shows up everywhere.
@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._session) : super(const AuthState.unknown()) {
    _subscription = _session.changes.listen(
      (profile) => emit(
        profile == null ? const AuthState.guest() : AuthState.signedIn(profile),
      ),
    );
  }

  final SessionRepository _session;
  late final StreamSubscription<UserProfile?> _subscription;

  /// Opens with the saved session, then refreshes it in the background.
  Future<void> restore(String languageCode) async {
    final profile = await _session.restore();
    if (isClosed) return;
    if (profile == null) {
      emit(const AuthState.guest());
      return;
    }
    // Offline or a server error: keep the saved profile.
    await _session.refresh(languageCode);
  }

  /// `null` on success; a failure for the caller to show.
  Future<Failure?> refresh(String languageCode) async {
    if (state is! AuthSignedIn) return null;
    final result = await _session.refresh(languageCode);
    return result.getLeft().toNullable();
  }

  Future<void> signOut() => _session.signOut();

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
