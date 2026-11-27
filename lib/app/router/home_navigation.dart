import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../core/l10n/l10n.dart';
import '../../core/utils/external_links.dart';
import '../../core/widgets/widgets.dart';
import '../../features/home/domain/entities/home_link.dart';
import '../../features/home/presentation/home_destination.dart';
import 'app_routes.dart';

/// Toast for destinations whose screens are not built yet.
void showComingSoon(BuildContext context) =>
    showAppToast(context, message: context.l10n.comingSoon);

/// Opens a Home destination.
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
    case NotificationsDestination():
      context.push(AppRoutes.notifications);
    case LinkDestination(link: PromoLink(:final id)):
      context.push(id.isEmpty ? AppRoutes.promotions : AppRoutes.promo(id));
    case PhotoSearchDestination():
      context.push(AppRoutes.photoSearch);
    // The search field takes links too, and offers a copied one.
    case SearchDestination() || PasteLinkDestination():
      context.push(AppRoutes.search);
    case VideoFeedDestination(:final storyId):
      context.push(AppRoutes.videoFeedFrom(storyId));
    case CollectionDestination(:final id, :final title):
      context.push(AppRoutes.collectionProducts(id, title));
    case LinkDestination(link: CollectionLink(:final id)):
      context.push(AppRoutes.collectionProducts(id, ''));
    case LinkDestination(link: ExternalLink(:final uri)):
      ExternalLinks.url(context, uri.toString());
  }
}

/// Opens a link in the website format (TZ §4), as notifications and
/// pushes carry them. Full-screen pages open on top; tab screens switch
/// to their tab, so back leads through that tab's own stack. Links the
/// app does not know (a newer website section) show a toast.
void openAppLink(BuildContext context, String link) {
  final path = Uri.tryParse(link)?.path ?? '';
  const overMenu = [
    '/product/',
    '/pay/',
    '/collection/',
    '/seller/',
    AppRoutes.promotions,
    AppRoutes.info,
    AppRoutes.support,
    AppRoutes.videoFeed,
    AppRoutes.search,
  ];
  const inTabs = [
    AppRoutes.accountPrefix,
    AppRoutes.profile,
    AppRoutes.catalog,
    AppRoutes.cart,
    AppRoutes.favourites,
    AppRoutes.home,
  ];
  if (overMenu.any(path.startsWith)) {
    context.push(link);
  } else if (inTabs.any(path.startsWith)) {
    context.go(link);
  } else {
    showComingSoon(context);
  }
}
