import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/product/domain/sku_selection.dart';
import '../../domain/entities/cart_quote.dart';
import '../../domain/usecases/get_product_variants_use_case.dart';

part 'variant_picker_cubit.freezed.dart';

@freezed
sealed class VariantPickerState with _$VariantPickerState {
  const factory VariantPickerState.loading() = VariantPickerLoading;

  const factory VariantPickerState.ready({
    required ProductVariants variants,
    required Map<String, String> chosen,
  }) = VariantPickerReady;

  /// [failure] is `null` when the product no longer exists.
  const factory VariantPickerState.failure([Failure? failure]) =
      VariantPickerFailure;
}

extension VariantPickerReadyX on VariantPickerReady {
  SkuSelection get selection => SkuSelection(
    properties: variants.properties,
    skus: variants.skus,
    chosen: chosen,
  );
}

/// Change-variant sheet of a cart line (TZ §5.10: «смена SKU в bottom
/// sheet»). Starts from the line's current variant.
@injectable
class VariantPickerCubit extends Cubit<VariantPickerState> {
  VariantPickerCubit(this._getVariants)
    : super(const VariantPickerState.loading());

  final GetProductVariantsUseCase _getVariants;

  Future<void> load({
    required String languageCode,
    required String productId,
    required String? currentSkuId,
  }) async {
    emit(const VariantPickerState.loading());
    final result = await _getVariants(
      languageCode: languageCode,
      productId: productId,
    );
    if (isClosed) return;
    emit(
      result.match(VariantPickerState.failure, (variants) {
        if (variants == null) return const VariantPickerState.failure();
        final current = variants.skus.where((s) => s.id == currentSkuId);
        return VariantPickerState.ready(
          variants: variants,
          chosen: current.isEmpty ? const {} : current.first.values,
        );
      }),
    );
  }

  void choose(String propertyId, String valueId) {
    final current = state;
    if (current is! VariantPickerReady) return;
    final selection = current.selection;
    if (!selection.isPossible(propertyId, valueId)) return;
    final next = selection.choose(propertyId, valueId);
    // Values that no longer fit with the new pick are dropped.
    emit(
      current.copyWith(
        chosen: {
          for (final MapEntry(:key, :value) in next.chosen.entries)
            if (key == propertyId || next.isAvailable(key, value)) key: value,
        },
      ),
    );
  }
}
