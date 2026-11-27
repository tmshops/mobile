import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/notifications/notifications_counter.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/navigation/tab_reselect_scroll.dart';
import '../../../../core/network/connectivity_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../core/product/presentation/for_you_bloc.dart';
import '../bloc/home_bloc.dart';
import '../home_destination.dart';
import '../../../../core/product/presentation/for_you_slivers.dart';
import 'home_header.dart';
import 'home_search_header.dart';
import 'home_section_view.dart';
import 'home_skeleton.dart';

/// Home layout and side effects. Expects [HomeBloc], [ForYouBloc],
/// [LocaleCubit] and [ConnectivityCubit] above it.
class HomeView extends StatefulWidget {
  const HomeView({required this.onNavigate, this.onOpenKit, super.key});

  final HomeNavigator onNavigate;
  final VoidCallback? onOpenKit;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TabReselectScrollMixin {
  void _restart(String languageCode) {
    context.read<HomeBloc>().add(HomeEvent.started(languageCode));
    context.read<ForYouBloc>().add(ForYouEvent.started(languageCode));
  }

  Future<void> _onPullToRefresh() async {
    final bloc = context.read<HomeBloc>()..add(const HomeEvent.refreshed());
    context.read<ForYouBloc>().add(
      ForYouEvent.started(context.read<LocaleCubit>().state.languageCode),
    );
    await bloc.stream.firstWhere(
      (s) => s is! HomeLoading && !(s is HomeLoaded && s.isRefreshing),
    );
  }

  /// Back online: reload whatever is missing or stale.
  void _onReconnected() {
    final home = context.read<HomeBloc>();
    final needsHome = switch (home.state) {
      HomeFailure() => true,
      HomeLoaded(:final content, :final refreshFailure) =>
        content.isFromCache || refreshFailure != null,
      HomeInitial() || HomeLoading() => false,
    };
    if (needsHome) home.add(const HomeEvent.refreshed());
    final forYou = context.read<ForYouBloc>();
    if (forYou.state.status == ForYouStatus.failure) {
      forYou.add(const ForYouEvent.nextPageRequested());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LocaleCubit, Locale>(
          listener: (context, locale) => _restart(locale.languageCode),
        ),
        BlocListener<ConnectivityCubit, bool>(
          listenWhen: (wasOnline, isOnline) => !wasOnline && isOnline,
          listener: (_, _) => _onReconnected(),
        ),
        BlocListener<HomeBloc, HomeState>(
          // Older content stays on screen; a toast says the refresh failed.
          // Offline is already explained by the offline bar.
          listenWhen: (previous, current) =>
              current is HomeLoaded &&
              current.refreshFailure != null &&
              !(previous is HomeLoaded && previous.refreshFailure != null),
          listener: (context, state) {
            final isOnline = context.read<ConnectivityCubit>().state;
            if (!isOnline) return;
            showAppToast(context, message: context.l10n.homeRefreshFailed);
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              BlocBuilder<ConnectivityCubit, bool>(
                builder: (_, isOnline) =>
                    isOnline ? const SizedBox.shrink() : const OfflineBanner(),
              ),
              Expanded(
                child: ForYouPager(
                  // «Для вас» pages only once the home content is shown.
                  canLoadMore: () =>
                      context.read<HomeBloc>().state is HomeLoaded,
                  child: RefreshIndicator(
                    onRefresh: _onPullToRefresh,
                    child: _HomeScrollView(
                      controller: scrollController,
                      onNavigate: widget.onNavigate,
                      onOpenKit: widget.onOpenKit,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeScrollView extends StatelessWidget {
  const _HomeScrollView({
    required this.controller,
    required this.onNavigate,
    required this.onOpenKit,
  });

  final ScrollController controller;
  final HomeNavigator onNavigate;
  final VoidCallback? onOpenKit;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      // Lets pull-to-refresh work on the short error and empty states.
      physics: const AlwaysScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: HomeHeader(
            onNotifications: () =>
                onNavigate(const HomeDestination.notifications()),
            onOpenKit: onOpenKit,
            hasUnread: context.select<NotificationsCounterCubit, bool>(
              (unread) => unread.state > 0,
            ),
          ),
        ),
        PinnedHeaderSliver(
          child: HomeSearchHeader(
            onSearch: () => onNavigate(const HomeDestination.search()),
            onPhotoSearch: () =>
                onNavigate(const HomeDestination.photoSearch()),
          ),
        ),
        BlocBuilder<HomeBloc, HomeState>(
          // A refresh flag alone changes nothing on screen.
          buildWhen: (previous, current) =>
              !(previous is HomeLoaded &&
                  current is HomeLoaded &&
                  previous.content == current.content),
          builder: (context, state) => switch (state) {
            HomeInitial() ||
            HomeLoading() => const SliverToBoxAdapter(child: HomeSkeleton()),
            HomeFailure(:final failure) => _FillRemaining(
              child: FailureView(
                failure: failure,
                onRetry: () =>
                    context.read<HomeBloc>().add(const HomeEvent.refreshed()),
              ),
            ),
            HomeLoaded(:final content) when content.sections.isEmpty =>
              _FillRemaining(
                child: EmptyState(
                  icon: AppIcons.package,
                  title: context.l10n.homeEmptyTitle,
                  message: context.l10n.homeEmptyText,
                  actionLabel: context.l10n.actionGoToCatalog,
                  onAction: () =>
                      onNavigate(const HomeDestination.allCategories()),
                ),
              ),
            HomeLoaded(:final content) => SliverMainAxisGroup(
              slivers: [
                SliverList.builder(
                  itemCount: content.sections.length,
                  itemBuilder: (context, i) => HomeSectionView(
                    section: content.sections[i],
                    isFirst: i == 0,
                    onNavigate: onNavigate,
                    onDealsExpired: () => context.read<HomeBloc>().add(
                      const HomeEvent.refreshed(),
                    ),
                  ),
                ),
                ForYouSlivers(
                  title: context.l10n.homeForYou,
                  onOpenProduct: (p) =>
                      onNavigate(HomeDestination.product(p.id, preview: p)),
                ),
              ],
            ),
          },
        ),
      ],
    );
  }
}

class _FillRemaining extends StatelessWidget {
  const _FillRemaining({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) =>
      SliverFillRemaining(hasScrollBody: false, child: Center(child: child));
}
