import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/product/domain/product_summary.dart';
import '../../domain/entities/product_details.dart';
import '../../../../core/product/domain/sku_selection.dart';
import '../../domain/usecases/fetch_product_use_case.dart';
import '../../domain/usecases/get_delivery_quotes_use_case.dart';
import '../../domain/usecases/get_recent_product_use_case.dart';
import '../../domain/usecases/record_view_use_case.dart';

part 'product_bloc.freezed.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started({
    required String languageCode,
    required String id,
    required String regionId,

    /// The tile the user tapped: painted at once while details load.
    ProductSummary? preview,
  }) = ProductStarted;

  const factory ProductEvent.retried() = ProductRetried;

  const factory ProductEvent.regionChanged(String regionId) =
      ProductRegionChanged;

  const factory ProductEvent.deliveryRetried() = ProductDeliveryRetried;

  const factory ProductEvent.valueSelected({
    required String propertyId,
    required String valueId,
  }) = ProductValueSelected;

  const factory ProductEvent.quantityChanged(int quantity) =
      ProductQuantityChanged;

  const factory ProductEvent.commentChanged(String comment) =
      ProductCommentChanged;
}

enum ProductStatus { loading, loaded, failure, notFound }

enum DeliveryStatus { loading, loaded, failure }

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ProductStatus.loading) ProductStatus status,
    ProductSummary? preview,
    ProductDetails? details,
    Failure? failure,

    /// Property id → value id.
    @Default(<String, String>{}) Map<String, String> chosen,
    @Default(1) int quantity,
    @Default('') String comment,
    @Default(<DeliveryQuote>[]) List<DeliveryQuote> delivery,
    @Default(DeliveryStatus.loading) DeliveryStatus deliveryStatus,
  }) = _ProductState;

  const ProductState._();

  /// Variant logic for the current choice; `null` until details arrive.
  SkuSelection? get selection {
    final d = details;
    if (d == null) return null;
    return SkuSelection(properties: d.properties, skus: d.skus, chosen: chosen);
  }

  /// Pieces left of the picked SKU; `null` until a SKU is picked.
  int? get stock => selection?.sku?.stock;
}

/// Product page: details (recent copy at once, then fresh), variant choice,
/// quantity, operator comment and delivery for the selected region.
@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this._getRecent, this._fetch, this._getDelivery, this._recordView)
    : super(const ProductState()) {
    on<ProductStarted>(_onStarted, transformer: restartable());
    on<ProductRetried>(_onRetried, transformer: droppable());
    on<ProductRegionChanged>(_onRegionChanged, transformer: restartable());
    on<ProductDeliveryRetried>(
      (_, emit) => _loadDelivery(emit),
      transformer: droppable(),
    );
    on<ProductValueSelected>(_onValueSelected);
    on<ProductQuantityChanged>(_onQuantityChanged);
    on<ProductCommentChanged>(
      (event, emit) => emit(state.copyWith(comment: event.comment)),
    );
  }

  final GetRecentProductUseCase _getRecent;
  final FetchProductUseCase _fetch;
  final GetDeliveryQuotesUseCase _getDelivery;
  final RecordViewUseCase _recordView;

  String _languageCode = '';
  String _id = '';
  String _regionId = '';

  Future<void> _onStarted(
    ProductStarted event,
    Emitter<ProductState> emit,
  ) async {
    _languageCode = event.languageCode;
    _id = event.id;
    _regionId = event.regionId;
    final recent = _getRecent(event.languageCode, event.id);
    emit(
      recent == null
          ? ProductState(preview: event.preview ?? state.preview)
          : _loaded(recent, keepChoice: false),
    );
    await Future.wait([_load(emit), _loadDelivery(emit)]);
  }

  Future<void> _onRetried(
    ProductRetried event,
    Emitter<ProductState> emit,
  ) async {
    if (_id.isEmpty) return;
    emit(state.copyWith(status: ProductStatus.loading, failure: null));
    await Future.wait([_load(emit), _loadDelivery(emit)]);
  }

  Future<void> _onRegionChanged(
    ProductRegionChanged event,
    Emitter<ProductState> emit,
  ) async {
    if (event.regionId == _regionId) return;
    _regionId = event.regionId;
    await _loadDelivery(emit);
  }

  void _onValueSelected(
    ProductValueSelected event,
    Emitter<ProductState> emit,
  ) {
    final selection = state.selection;
    if (selection == null ||
        !selection.isPossible(event.propertyId, event.valueId)) {
      return;
    }
    final next = selection.choose(event.propertyId, event.valueId);
    // Values of other properties that no longer fit are unpicked.
    final chosen = {
      for (final MapEntry(:key, :value) in next.chosen.entries)
        if (key == event.propertyId || next.isAvailable(key, value)) key: value,
    };
    final stock = SkuSelection(
      properties: selection.properties,
      skus: selection.skus,
      chosen: chosen,
    ).sku?.stock;
    emit(
      state.copyWith(
        chosen: chosen,
        quantity: stock == null
            ? state.quantity
            : state.quantity.clamp(1, stock),
      ),
    );
  }

  void _onQuantityChanged(
    ProductQuantityChanged event,
    Emitter<ProductState> emit,
  ) {
    final stock = state.stock;
    final max = stock == null || stock < 1 ? event.quantity : stock;
    emit(state.copyWith(quantity: event.quantity.clamp(1, max)));
  }

  Future<void> _load(Emitter<ProductState> emit) async {
    if (emit.isDone) return;
    final result = await _fetch(languageCode: _languageCode, id: _id);
    emit(
      result.match(
        (failure) => state.details == null
            ? state.copyWith(status: ProductStatus.failure, failure: failure)
            // A recent copy is on screen: keep it rather than an error.
            : state.copyWith(status: ProductStatus.loaded),
        (details) => details == null
            ? state.copyWith(status: ProductStatus.notFound)
            : _loaded(details, keepChoice: true),
      ),
    );
    final details = result.toNullable();
    // History is a nicety: a failed write must not disturb the page.
    if (details != null) unawaited(_recordView(details));
  }

  Future<void> _loadDelivery(Emitter<ProductState> emit) async {
    if (emit.isDone) return;
    emit(state.copyWith(deliveryStatus: DeliveryStatus.loading));
    final result = await _getDelivery(
      languageCode: _languageCode,
      id: _id,
      regionId: _regionId,
    );
    emit(
      result.match(
        (_) => state.copyWith(deliveryStatus: DeliveryStatus.failure),
        (quotes) => state.copyWith(
          delivery: quotes,
          deliveryStatus: DeliveryStatus.loaded,
        ),
      ),
    );
  }

  /// Fresh details keep what the user already picked, when still possible.
  ProductState _loaded(ProductDetails details, {required bool keepChoice}) {
    final initial = SkuSelection.initial(
      properties: details.properties,
      skus: details.skus,
    );
    var selection = initial;
    if (keepChoice) {
      for (final MapEntry(:key, :value) in state.chosen.entries) {
        if (selection.isAvailable(key, value)) {
          selection = selection.choose(key, value);
        }
      }
    }
    return state.copyWith(
      status: ProductStatus.loaded,
      details: details,
      failure: null,
      chosen: selection.chosen,
    );
  }
}
