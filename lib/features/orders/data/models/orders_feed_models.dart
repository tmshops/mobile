import 'package:freezed_annotation/freezed_annotation.dart';

import 'orders_models.dart';

part 'orders_feed_models.freezed.dart';
part 'orders_feed_models.g.dart';

/// `GET /orders/overview` response.
@freezed
abstract class OrdersOverviewModel with _$OrdersOverviewModel {
  const factory OrdersOverviewModel({
    /// Filter id → number of cards; unknown ids are ignored.
    @Default(<String, int>{}) Map<String, int> counts,
    @Default(<TrackingUpdateModel>[]) List<TrackingUpdateModel> tracking,
  }) = _OrdersOverviewModel;

  factory OrdersOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersOverviewModelFromJson(json);
}

@freezed
abstract class TrackingUpdateModel with _$TrackingUpdateModel {
  const factory TrackingUpdateModel({
    /// `order` or `parcel`.
    required String kind,
    required String number,
    required String imageUrl,
    required StatusModel status,
    required String at,
    required String text,
  }) = _TrackingUpdateModel;

  factory TrackingUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$TrackingUpdateModelFromJson(json);
}

/// `GET /orders/feed?filter=` response.
@freezed
abstract class OrdersFeedModel with _$OrdersFeedModel {
  const factory OrdersFeedModel({
    @Default(<FeedCardModel>[]) List<FeedCardModel> cards,
  }) = _OrdersFeedModel;

  factory OrdersFeedModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersFeedModelFromJson(json);
}

@freezed
abstract class FeedCardModel with _$FeedCardModel {
  const factory FeedCardModel({
    required String kind,
    required String number,
    required String createdAt,
    required StatusModel status,
    required List<FeedItemModel> items,
    @Default(<FeedActionModel>[]) List<FeedActionModel> actions,
    int? amountDue,
    FeedTrackModel? track,
  }) = _FeedCardModel;

  factory FeedCardModel.fromJson(Map<String, dynamic> json) =>
      _$FeedCardModelFromJson(json);
}

@freezed
abstract class FeedItemModel with _$FeedItemModel {
  const factory FeedItemModel({
    required String id,
    required String productId,
    required String title,
    required String imageUrl,
    required int price,
    required int quantity,
    String? options,
  }) = _FeedItemModel;

  factory FeedItemModel.fromJson(Map<String, dynamic> json) =>
      _$FeedItemModelFromJson(json);
}

@freezed
abstract class FeedTrackModel with _$FeedTrackModel {
  const factory FeedTrackModel({required String title, required String text}) =
      _FeedTrackModel;

  factory FeedTrackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedTrackModelFromJson(json);
}

@freezed
abstract class FeedActionModel with _$FeedActionModel {
  const factory FeedActionModel({
    required String id,
    @Default(false) bool isPrimary,
    String? itemId,
  }) = _FeedActionModel;

  factory FeedActionModel.fromJson(Map<String, dynamic> json) =>
      _$FeedActionModelFromJson(json);
}
