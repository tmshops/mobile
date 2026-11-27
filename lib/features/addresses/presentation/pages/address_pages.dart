import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/locale/locale_cubit.dart';
import '../../domain/entities/delivery_address.dart';
import '../bloc/address_editor_cubit.dart';
import '../bloc/addresses_cubit.dart';
import '../widgets/address_editor_view.dart';
import '../widgets/addresses_view.dart';

String _lang(BuildContext context) =>
    context.read<LocaleCubit>().state.languageCode;

/// «Адреса» (TZ §5.16).
class AddressesPage extends StatelessWidget {
  const AddressesPage({required this.onOpenEditor, super.key});

  /// Opens the editor for [address], or for a new one; completes once it
  /// closes, saved or not.
  final Future<void> Function(DeliveryAddress? address) onOpenEditor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddressesCubit>()..load(_lang(context)),
      child: Builder(
        builder: (context) {
          final cubit = context.read<AddressesCubit>();
          Future<void> open(DeliveryAddress? address) async {
            await onOpenEditor(address);
            if (context.mounted) await cubit.load(_lang(context));
          }

          return AddressesView(
            onReload: () => cubit.load(_lang(context)),
            onAdd: () => open(null),
            onEdit: open,
          );
        },
      ),
    );
  }
}

/// Address on the map (TZ §5.16): new, or [address] to change.
class AddressEditorPage extends StatelessWidget {
  const AddressEditorPage({required this.onSaved, this.address, super.key});

  final DeliveryAddress? address;
  final ValueChanged<DeliveryAddress> onSaved;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AddressEditorCubit>()..start(_lang(context), existing: address),
      child: AddressEditorView(
        isNew: address == null,
        initialDetails: address?.details ?? '',
        onSaved: onSaved,
      ),
    );
  }
}
