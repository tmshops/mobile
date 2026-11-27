import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/chat.dart';
import '../bloc/find_request_cubit.dart';
import 'chat_sheets.dart';

/// «Найдите мне товар» form (UI_DESIGN §7.22): illustration header,
/// description, up to five photos or a link, «Отправить заявку».
/// Expects [FindRequestCubit].
class FindRequestView extends StatefulWidget {
  const FindRequestView({
    required this.initialDescription,
    required this.onSent,
    super.key,
  });

  final String initialDescription;
  final ValueChanged<ChatMessage> onSent;

  @override
  State<FindRequestView> createState() => _FindRequestViewState();
}

class _FindRequestViewState extends State<FindRequestView> {
  late final _description = TextEditingController(
    text: widget.initialDescription,
  );

  @override
  void dispose() {
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    final cubit = context.read<FindRequestCubit>();
    return BlocConsumer<FindRequestCubit, FindRequestState>(
      listenWhen: (a, b) => a.sent == null && b.sent != null,
      listener: (context, state) {
        if (state.sent case final card?) widget.onSent(card);
      },
      builder: (context, state) {
        final failure = state.failure;
        return Scaffold(
          appBar: AppBar(title: Text(l10n.photoFindForMe)),
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.screen),
            children: [
              const Center(child: SpotIllustration(icon: AppIcons.sparkle)),
              const SizedBox(height: AppSpacing.x16),
              Text(
                l10n.findHeader,
                textAlign: TextAlign.center,
                style: context.text.body.copyWith(color: c.inkSecondary),
              ),
              const SizedBox(height: AppSpacing.x24),
              AppTextField(
                controller: _description,
                label: l10n.findDescription,
                hint: l10n.findDescriptionHint,
                minLines: 3,
                maxLines: 6,
                onChanged: cubit.descriptionChanged,
              ),
              const SizedBox(height: AppSpacing.x24),
              Text(
                l10n.findPhotos(
                  state.photos.length,
                  FindRequestCubit.maxPhotos,
                ),
                style: context.text.bodyStrong,
              ),
              const SizedBox(height: AppSpacing.x8),
              PhotoGrid(
                // The chosen ones first, so a prefilled photo is visible.
                photos: [
                  ...state.photos,
                  for (final p in state.gallery)
                    if (!state.photos.contains(p)) p,
                ],
                chosen: state.photos,
                onToggle: cubit.togglePhoto,
              ),
              const SizedBox(height: AppSpacing.x24),
              AppTextField(
                label: l10n.findLink,
                keyboardType: TextInputType.url,
                prefix: const Icon(AppIcons.link),
                onChanged: cubit.linkChanged,
              ),
              if (failure != null) ...[
                const SizedBox(height: AppSpacing.x12),
                Text(
                  actionFailureText(l10n, failure),
                  style: context.text.caption.copyWith(color: c.danger),
                ),
              ],
            ],
          ),
          bottomNavigationBar: StickyActionBar(
            above: state.canSend || state.isSending
                ? null
                : Text(
                    l10n.findNeedSomething,
                    textAlign: TextAlign.center,
                    style: context.text.caption.copyWith(color: c.inkSecondary),
                  ),
            primary: PrimaryButton(
              label: l10n.findSend,
              isLoading: state.isSending,
              onPressed: state.canSend
                  ? () => cubit.submit(
                      context.read<LocaleCubit>().state.languageCode,
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }
}
