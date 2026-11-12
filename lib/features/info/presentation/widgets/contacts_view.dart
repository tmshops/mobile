import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/external_links.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/info.dart';
import '../bloc/info_cubits.dart';
import 'info_common.dart';

/// «Контакты» (UI_DESIGN §7.25): tap-to-call, Telegram, WhatsApp, email
/// and the office card. Expects [ContactsCubit].
class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<ContactsCubit>();
    return Scaffold(
      backgroundColor: c.surface,
      appBar: AppBar(
        backgroundColor: c.surface,
        title: Text(InfoTopic.contacts.title(l10n)),
      ),
      body: BlocBuilder<ContactsCubit, InfoState<StoreContacts>>(
        builder: (context, state) => InfoBody<StoreContacts>(
          isLoading: state.isLoading,
          data: state.data,
          failure: state.failure,
          onRefresh: () =>
              cubit.load(context.read<LocaleCubit>().state.languageCode),
          builder: (context, contacts) => ListView(
            padding: const EdgeInsets.only(
              top: AppSpacing.x8,
              bottom: AppSpacing.section,
            ),
            children: [
              _Channels(contacts: contacts),
              GroupHeader(l10n.infoOffice),
              _OfficeCard(contacts: contacts),
            ],
          ),
        ),
      ),
    );
  }
}

class _Channels extends StatelessWidget {
  const _Channels({required this.contacts});

  final StoreContacts contacts;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final (telegram, whatsapp, email) = (
      contacts.telegram,
      contacts.whatsapp,
      contacts.email,
    );
    return MenuGroup(
      children: [
        for (final phone in contacts.phones)
          _ChannelRow(
            icon: AppIcons.phone,
            title: phone,
            hint: l10n.infoCall,
            onTap: () => ExternalLinks.call(context, phone),
          ),
        if (telegram != null)
          _ChannelRow(
            icon: AppIcons.telegram,
            title: l10n.infoTelegram,
            hint: l10n.infoWrite,
            onTap: () => ExternalLinks.url(context, telegram),
          ),
        if (whatsapp != null)
          _ChannelRow(
            icon: AppIcons.whatsapp,
            title: l10n.infoWhatsapp,
            hint: l10n.infoWrite,
            onTap: () => ExternalLinks.url(context, whatsapp),
          ),
        if (email != null)
          _ChannelRow(
            icon: AppIcons.email,
            title: email,
            hint: l10n.infoWrite,
            onTap: () => ExternalLinks.email(context, email),
          ),
      ],
    );
  }
}

/// A [MenuRow] that tells screen readers what a tap does.
class _ChannelRow extends StatelessWidget {
  const _ChannelRow({
    required this.icon,
    required this.title,
    required this.hint,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String hint;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Semantics(
    hint: hint,
    child: MenuRow(icon: icon, title: title, onTap: onTap),
  );
}

/// Where the office is and when it is open, with «Маршрут».
class _OfficeCard extends StatelessWidget {
  const _OfficeCard({required this.contacts});

  final StoreContacts contacts;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return ContentCard(
      onTap: () => ExternalLinks.map(context, contacts.address),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: AppSizes.touchTarget,
            height: AppSizes.touchTarget,
            decoration: BoxDecoration(
              color: c.primarySoft,
              borderRadius: AppRadii.imageBorder,
            ),
            child: Icon(AppIcons.map, color: c.primary),
          ),
          const SizedBox(width: AppSpacing.x12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contacts.address, style: context.text.h3),
                const SizedBox(height: AppSpacing.x4),
                Text(
                  contacts.hours,
                  style: context.text.caption.copyWith(color: c.inkSecondary),
                ),
                const SizedBox(height: AppSpacing.x8),
                Text(
                  context.l10n.infoRoute,
                  style: context.text.bodyStrong.copyWith(
                    color: c.primaryPressed,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
