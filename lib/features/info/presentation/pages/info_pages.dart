import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import '../widgets/contacts_view.dart';
import '../widgets/delivery_terms_view.dart';
import '../widgets/faq_view.dart';
import '../widgets/info_article_view.dart';
import '../widgets/info_menu_view.dart';
import '../widgets/pickup_points_view.dart';

/// «Информация» menu (TZ §5.19).
class InfoMenuPage extends StatelessWidget {
  const InfoMenuPage({required this.onOpen, super.key});

  final ValueChanged<InfoTopic> onOpen;

  @override
  Widget build(BuildContext context) => InfoMenuView(onOpen: onOpen);
}

/// One information page. Each kind has its own cubit and layout; all of
/// them reload when the language changes, since the texts are the
/// server's.
class InfoTopicPage extends StatelessWidget {
  const InfoTopicPage({
    required this.topic,
    required this.onOpenTopic,
    this.onTapLink,
    super.key,
  });

  final InfoTopic topic;

  /// FAQ → «Контакты» when nothing matched.
  final ValueChanged<InfoTopic> onOpenTopic;

  /// Links inside server HTML.
  final ValueChanged<String>? onTapLink;

  @override
  Widget build(BuildContext context) {
    String language(BuildContext c) => c.read<LocaleCubit>().state.languageCode;
    return switch (topic) {
      InfoTopic.delivery => _Reloading<DeliveryTermsCubit>(
        create: (c) => getIt<DeliveryTermsCubit>()..load(language(c)),
        reload: (cubit, lang) => cubit.load(lang),
        child: DeliveryTermsView(onTapLink: onTapLink),
      ),
      InfoTopic.pickupPoints => _Reloading<PickupPointsCubit>(
        create: (c) => getIt<PickupPointsCubit>()..load(language(c)),
        reload: (cubit, lang) => cubit.load(lang),
        child: const PickupPointsView(),
      ),
      InfoTopic.faq => _Reloading<FaqCubit>(
        create: (c) => getIt<FaqCubit>()..load(language(c)),
        reload: (cubit, lang) => cubit.load(lang),
        child: FaqView(
          onOpenContacts: () => onOpenTopic(InfoTopic.contacts),
          onTapLink: onTapLink,
        ),
      ),
      InfoTopic.contacts => _Reloading<ContactsCubit>(
        create: (c) => getIt<ContactsCubit>()..load(language(c)),
        reload: (cubit, lang) => cubit.load(lang),
        child: const ContactsView(),
      ),
      InfoTopic.about ||
      InfoTopic.returns ||
      InfoTopic.offer ||
      InfoTopic.privacy => _Reloading<InfoArticleCubit>(
        create: (c) => getIt<InfoArticleCubit>()..load(language(c), topic),
        reload: (cubit, lang) => cubit.load(lang, topic),
        child: InfoArticleView(topic: topic, onTapLink: onTapLink),
      ),
    };
  }
}

/// Provides [C] and reloads it in the new language.
class _Reloading<C extends StateStreamableSource<Object?>>
    extends StatelessWidget {
  const _Reloading({
    required this.create,
    required this.reload,
    required this.child,
  });

  final C Function(BuildContext context) create;
  final void Function(C cubit, String languageCode) reload;
  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<C>(
    create: create,
    child: Builder(
      builder: (context) => BlocListener<LocaleCubit, Locale>(
        listener: (_, locale) => reload(context.read<C>(), locale.languageCode),
        child: child,
      ),
    ),
  );
}
