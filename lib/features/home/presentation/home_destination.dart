import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/product/domain/product_summary.dart';
import '../domain/entities/home_link.dart';

part 'home_destination.freezed.dart';

/// Everywhere Home can lead. The router decides how to open each one, so
/// Home never imports other features or route paths.
@freezed
sealed class HomeDestination with _$HomeDestination {
  const factory HomeDestination.search() = SearchDestination;
  const factory HomeDestination.photoSearch() = PhotoSearchDestination;
  const factory HomeDestination.pasteLink() = PasteLinkDestination;
  const factory HomeDestination.notifications() = NotificationsDestination;
  const factory HomeDestination.videoFeed(String storyId) =
      VideoFeedDestination;
  const factory HomeDestination.product(
    String id, {

    /// The tapped tile, shown while the product page loads.
    ProductSummary? preview,
  }) = ProductDestination;
  const factory HomeDestination.category(String slug) = CategoryDestination;
  const factory HomeDestination.allCategories() = AllCategoriesDestination;
  const factory HomeDestination.link(HomeLink link) = LinkDestination;

  /// «Все» of a product carousel; [title] heads the list.
  const factory HomeDestination.collection(String id, String title) =
      CollectionDestination;
}

typedef HomeNavigator = void Function(HomeDestination destination);
