import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';

/// Delivery region (welaýat or Ashgabat). Prices and terms depend on it.
@freezed
abstract class Region with _$Region {
  const factory Region({required String id, required String name}) = _Region;
}
