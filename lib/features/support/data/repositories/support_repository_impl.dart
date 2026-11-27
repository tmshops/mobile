import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/guard.dart';
import '../../../../core/media/device_photos.dart';
import '../../../../core/product/data/product_summary_model.dart';
import '../../domain/entities/chat.dart';
import '../../domain/repositories/support_repository.dart';
import '../datasources/support_remote_data_source.dart';

@LazySingleton(as: SupportRepository)
class SupportRepositoryImpl implements SupportRepository {
  const SupportRepositoryImpl(this._remote, this._photos);

  final SupportRemoteDataSource _remote;
  final DevicePhotos _photos;

  @override
  Future<Either<Failure, ChatPage>> history(
    String languageCode, {
    String? olderCursor,
  }) => guardCall(() async {
    final json = await _remote.history(languageCode, before: olderCursor);
    return _parse(
      () => ChatPage(
        messages: _messages(json['items']),
        olderCursor: json['next_cursor'] as String?,
      ),
    );
  });

  @override
  Future<Either<Failure, ChatNews>> news(
    String languageCode, {
    DateTime? after,
  }) => guardCall(() async {
    final json = await _remote.news(languageCode, after: after);
    return _parse(
      () => ChatNews(
        messages: _messages(json['items']),
        requests: _messages(json['requests']),
      ),
    );
  });

  @override
  Future<Either<Failure, ChatMessage>> send(
    String languageCode,
    ChatDraft draft,
  ) => guardCall(() async {
    final json = await _remote.send(languageCode, {
      'text': ?draft.text,
      if (draft.images.isNotEmpty) 'images': draft.images,
      'order_number': ?draft.orderNumber,
    });
    return _parse(() => _message(json));
  });

  @override
  Future<Either<Failure, ChatMessage>> findForMe(
    String languageCode, {
    required String description,
    required List<String> photos,
    String? link,
  }) => guardCall(() async {
    final json = await _remote.request(languageCode, {
      'description': description,
      'photos': photos,
      'link': ?link,
    });
    return _parse(() => _message(json));
  });

  @override
  Future<Either<Failure, List<OrderRef>>> recentOrders(String languageCode) =>
      guardCall(() async {
        final json = await _remote.recentOrders(languageCode);
        return _parse(
          () => [
            for (final o
                in (json['orders'] as List<dynamic>)
                    .cast<Map<String, dynamic>>())
              OrderRef(
                number: o['number'] as String,
                status: o['status'] as String,
              ),
          ],
        );
      });

  @override
  Future<Either<Failure, List<String>>> devicePhotos() =>
      guardCall(_photos.gallery);

  static List<ChatMessage> _messages(Object? items) => [
    for (final m in (items as List<dynamic>).cast<Map<String, dynamic>>())
      _message(m),
  ];

  static ChatMessage _message(Map<String, dynamic> json) => ChatMessage(
    id: json['id'] as String,
    isMine: json['author'] == 'me',
    sentAt: DateTime.parse(json['sent_at'] as String),
    content: _content(json),
  );

  static ChatContent _content(Map<String, dynamic> json) {
    if (json['request'] case final Map<String, dynamic> r) {
      return ChatContent.request(
        FindRequest(
          id: r['id'] as String,
          description: r['description'] as String,
          photos: (r['photos'] as List<dynamic>).cast<String>(),
          link: r['link'] as String?,
          status: r['status'] == 'found'
              ? FindRequestStatus.found
              : FindRequestStatus.searching,
          product: switch (r['product']) {
            final Map<String, dynamic> p => ProductSummaryModel.fromJson(
              p,
            ).toEntity(),
            _ => null,
          },
        ),
      );
    }
    if (json['product'] case final Map<String, dynamic> p) {
      return ChatContent.product(ProductSummaryModel.fromJson(p).toEntity());
    }
    if (json['order'] case {'number': final String number}) {
      return ChatContent.order(number);
    }
    if (json['images'] case final List<dynamic> images) {
      return ChatContent.images(images.cast<String>());
    }
    return ChatContent.text(json['text'] as String? ?? '');
  }

  static T _parse<T>(T Function() parse) {
    try {
      return parse();
    } on Object catch (e) {
      throw ServerException(cause: e);
    }
  }
}
