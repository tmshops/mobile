import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'cart_item.dart';
import 'cart_repository.dart';

part 'cart_cubit.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({@Default(<CartItem>[]) List<CartItem> items}) =
      _CartState;

  const CartState._();

  /// Cart tab badge: number of lines, not pieces (TZ §4).
  int get positions => items.length;

  List<CartItem> get selected => [
    for (final i in items)
      if (i.isSelected) i,
  ];

  bool get isAllSelected =>
      items.isNotEmpty && items.every((i) => i.isSelected);
}

/// The guest cart, app-wide (TZ §3: CartBloc is a global bloc).
///
/// Every change shows at once and is saved in the background (optimistic,
/// TZ §5.10); if saving fails the cart still works for this session.
@lazySingleton
class CartCubit extends Cubit<CartState> {
  CartCubit(this._repository) : super(const CartState());

  final CartRepository _repository;

  Future<void> load() async {
    final result = await _repository.load();
    result.match((_) {}, (items) {
      if (!isClosed) emit(CartState(items: items));
    });
  }

  /// Adds [item], or adds its quantity to the same product+variant line.
  /// A new non-empty comment replaces the old one.
  Future<void> add(CartItem item) {
    final items = [...state.items];
    final index = items.indexWhere(item.isSameLine);
    if (index < 0) {
      items.add(item);
    } else {
      items[index] = _merge(items[index], item);
    }
    return _save(items);
  }

  Future<void> setQuantity(String key, int quantity) => _update(
    key,
    (line) => line.copyWith(quantity: quantity < 1 ? 1 : quantity),
  );

  Future<void> setSelected(String key, {required bool isSelected}) =>
      _update(key, (line) => line.copyWith(isSelected: isSelected));

  /// Ticks or unticks a seller's lines, or all when [keys] is `null`.
  Future<void> setSelectedMany({required bool isSelected, Set<String>? keys}) =>
      _save([
        for (final line in state.items)
          if (keys == null || keys.contains(line.key))
            line.copyWith(isSelected: isSelected)
          else
            line,
      ]);

  /// Moves a line to another variant. If that variant is already in the
  /// cart, the two lines become one.
  Future<void> changeVariant(
    String key, {
    required String skuId,
    required String? skuLabel,
    required int price,
    required String imageUrl,
  }) {
    final index = state.items.indexWhere((i) => i.key == key);
    if (index < 0) return Future.value();
    final moved = state.items[index].copyWith(
      skuId: skuId,
      skuLabel: skuLabel,
      price: price,
      imageUrl: imageUrl,
    );
    final items = [...state.items]..removeAt(index);
    final twin = items.indexWhere(moved.isSameLine);
    if (twin < 0) {
      items.insert(index, moved);
    } else {
      items[twin] = _merge(items[twin], moved);
    }
    return _save(items);
  }

  /// Removes a line; returns its position so [restore] can undo it.
  Future<int> remove(String key) async {
    final index = state.items.indexWhere((i) => i.key == key);
    if (index < 0) return -1;
    await _save([...state.items]..removeAt(index));
    return index;
  }

  /// Drops ordered lines after checkout; unticked ones stay for later.
  Future<void> removeMany(Set<String> keys) => _save([
    for (final line in state.items)
      if (!keys.contains(line.key)) line,
  ]);

  /// Puts back a removed line («Отменить»).
  Future<void> restore(CartItem item, int index) {
    if (state.items.any(item.isSameLine)) return Future.value();
    final items = [...state.items];
    items.insert(index.clamp(0, items.length), item);
    return _save(items);
  }

  Future<void> _update(String key, CartItem Function(CartItem) change) =>
      _save([
        for (final line in state.items)
          if (line.key == key) change(line) else line,
      ]);

  Future<void> _save(List<CartItem> items) async {
    emit(CartState(items: items));
    await _repository.save(items);
  }

  static CartItem _merge(CartItem line, CartItem added) {
    final comment = added.comment;
    return line.copyWith(
      quantity: line.quantity + added.quantity,
      comment: comment != null && comment.isNotEmpty ? comment : line.comment,
      isSelected: true,
    );
  }
}
