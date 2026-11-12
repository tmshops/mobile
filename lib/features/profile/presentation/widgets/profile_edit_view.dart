import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/l10n/l10n.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../../../core/region/region_cubit.dart';
import '../../../../core/region/region_picker_sheet.dart';
import '../../../../core/theme/theme.dart';
import '../../../../core/utils/phone_format.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/profile_edit.dart';
import '../bloc/profile_edit_cubit.dart';
import 'phone_change_sheet.dart';

/// «Личные данные» (UI_DESIGN §7.24): initials, name, email, region,
/// phone with «Изменить»; sticky «Сохранить» only when something changed.
/// Expects [ProfileEditCubit], started with the current profile.
class ProfileEditView extends StatefulWidget {
  const ProfileEditView({required this.onSaved, super.key});

  /// After a successful save, e.g. back to Profile.
  final VoidCallback onSaved;

  @override
  State<ProfileEditView> createState() => _ProfileEditViewState();
}

class _ProfileEditViewState extends State<ProfileEditView> {
  late final ProfileDraft _start = context.read<ProfileEditCubit>().state.draft;
  late final _firstName = TextEditingController(text: _start.firstName);
  late final _lastName = TextEditingController(text: _start.lastName);
  late final _email = TextEditingController(text: _start.email);

  ProfileEditCubit get _cubit => context.read<ProfileEditCubit>();

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    super.dispose();
  }

  void _changed() => _cubit.change(
    _cubit.state.draft.copyWith(
      firstName: _firstName.text,
      lastName: _lastName.text,
      email: _email.text,
    ),
  );

  Future<void> _save() async {
    final l10n = context.l10n;
    final region = context.read<RegionCubit>();
    final regionId = _cubit.state.draft.regionId;
    final result = await _cubit.save(
      context.read<LocaleCubit>().state.languageCode,
    );
    if (!mounted) return;
    result.match(
      (failure) => showAppToast(
        context,
        message: actionFailureText(l10n, failure),
        icon: AppIcons.warning,
      ),
      (_) {
        // Delivery prices follow the region the customer chose here.
        if (regionId != null && regionId != region.state.selectedId) {
          region.select(regionId);
        }
        showAppToast(context, message: l10n.profileEditSaved);
        widget.onSaved();
      },
    );
  }

  Future<void> _pickRegion() async {
    final regions = context.read<RegionCubit>().state;
    final id = await showRegionPicker(
      context,
      regions: regions.regions,
      selectedId: _cubit.state.draft.regionId ?? regions.selectedId,
    );
    if (id != null) _cubit.change(_cubit.state.draft.copyWith(regionId: id));
  }

  Future<void> _changePhone() async {
    final l10n = context.l10n;
    final isChanged = await showPhoneChangeSheet(context);
    if (isChanged && mounted) {
      showAppToast(context, message: l10n.profileEditPhoneChanged);
    }
  }

  Future<bool> _confirmDiscard() async {
    final l10n = context.l10n;
    final isDiscarded = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.profileEditDiscardTitle),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.profileEditKeepEditing),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.profileEditDiscard),
          ),
        ],
      ),
    );
    return isDiscarded ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ProfileEditCubit, ProfileEditState>(
      builder: (context, state) => PopScope(
        canPop: !state.isChanged,
        onPopInvokedWithResult: (didPop, _) async {
          if (didPop) return;
          final navigator = Navigator.of(context);
          // Just saved: this frame may still hold the old canPop.
          if (!_cubit.state.isChanged || await _confirmDiscard()) {
            navigator.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(title: Text(l10n.profileEditTitle)),
          body: ListView(
            padding: const EdgeInsets.all(AppSpacing.screen),
            children: [
              Center(child: _Avatar(initials: state.draft.initials)),
              const SizedBox(height: AppSpacing.x24),
              AppTextField(
                controller: _firstName,
                label: l10n.profileEditFirstName,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.givenName],
                maxLength: _maxName,
                onChanged: (_) => _changed(),
              ),
              const SizedBox(height: AppSpacing.x12),
              AppTextField(
                controller: _lastName,
                label: l10n.profileEditLastName,
                textInputAction: TextInputAction.next,
                autofillHints: const [AutofillHints.familyName],
                maxLength: _maxName,
                onChanged: (_) => _changed(),
              ),
              const SizedBox(height: AppSpacing.x12),
              AppTextField(
                controller: _email,
                label: l10n.settingsEmailLabel,
                helperText: state.draft.isEmailValid
                    ? l10n.profileEditOptional
                    : null,
                errorText: state.draft.isEmailValid
                    ? null
                    : l10n.profileEditBadEmail,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                onChanged: (_) => _changed(),
              ),
              const SizedBox(height: AppSpacing.x16),
              _PickerRow(
                label: l10n.regionTitle,
                value: _regionName(context, state.draft.regionId),
                onTap: _pickRegion,
              ),
              const SizedBox(height: AppSpacing.x12),
              _PickerRow(
                label: l10n.phoneLabel,
                value: switch (context.watch<AuthCubit>().state) {
                  AuthSignedIn(:final profile) => PhoneFormat.national(
                    profile.phone,
                  ),
                  _ => '',
                },
                action: l10n.profileEditChange,
                onTap: _changePhone,
              ),
            ],
          ),
          bottomNavigationBar: StickyActionBar(
            primary: PrimaryButton(
              label: l10n.profileEditSave,
              isLoading: state.isSaving,
              onPressed: state.canSave ? _save : null,
            ),
          ),
        ),
      ),
    );
  }

  static const _maxName = 50;

  static String _regionName(BuildContext context, String? id) {
    final region = context.watch<RegionCubit>().state;
    return region.regions.where((r) => r.id == id).firstOrNull?.name ??
        region.selectedName ??
        '';
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.initials});

  final String initials;

  static const double _size = 80;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    return ExcludeSemantics(
      child: Container(
        width: _size,
        height: _size,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: c.primarySoft, shape: BoxShape.circle),
        child: initials.isEmpty
            ? Icon(AppIcons.user, size: AppSizes.icon * 1.5, color: c.primary)
            : Text(initials, style: context.text.h1.copyWith(color: c.primary)),
      ),
    );
  }
}

/// A read-only field that opens a picker or flow: label over value, with
/// an action word or a chevron.
class _PickerRow extends StatelessWidget {
  const _PickerRow({
    required this.label,
    required this.value,
    required this.onTap,
    this.action,
  });

  final String label;
  final String value;
  final String? action;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final word = action;
    return Material(
      color: c.surface,
      borderRadius: AppRadii.inputBorder,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.inputBorder,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.x16,
            vertical: AppSpacing.x12,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: context.text.caption.copyWith(
                        color: c.inkSecondary,
                      ),
                    ),
                    Text(value, style: context.text.body),
                  ],
                ),
              ),
              const SizedBox(width: AppSpacing.x8),
              if (word != null)
                Text(
                  word,
                  style: context.text.bodyStrong.copyWith(
                    color: c.primaryPressed,
                  ),
                )
              else
                Icon(AppIcons.chevronRight, color: c.inkTertiary),
            ],
          ),
        ),
      ),
    );
  }
}
