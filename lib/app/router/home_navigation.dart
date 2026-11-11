import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../core/l10n/l10n.dart';
import '../../core/widgets/widgets.dart';
import '../../features/home/domain/entities/home_link.dart';
import '../../features/home/presentation/home_destination.dart';
import 'app_routes.dart';

/// Toast for destinations whose screens are not built yet.
void showComingSoon(BuildContext context) =>
    showAppToast(context, message: context.l10n.comingSoon);

/// Opens a Home destination. Screens that do not exist yet show a
/// «скоро появится» toast; replace each case as its screen is built.
void openHomeDestination(BuildContext context, HomeDestination destination) {
  switch (destination) {
    case AllCategoriesDestination():
      context.go(AppRoutes.catalog);
    // `go` switches to the Catalog tab with the tree under the list, so
    // back leads to the tree, as if the user had come from there.
    case CategoryDestination(:final slug) ||
        LinkDestination(link: CategoryLink(:final slug)):
      context.go(AppRoutes.categoryProducts(slug));
    case ProductDestination(:final id, :final preview):
      context.push(AppRoutes.product(id), extra: preview);
    case LinkDestination(link: ProductLink(:final id)):
      context.push(AppRoutes.product(id));
    case SearchDestination() ||
        PhotoSearchDestination() ||
        PasteLinkDestination() ||
        NotificationsDestination() ||
        VideoFeedDestination() ||
        LinkDestination():
      showComingSoon(context);
  }
}
