import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_entity.freezed.dart';

@freezed
abstract class InventoryEntity with _$InventoryEntity {
  const factory InventoryEntity({
    required String id,
    required String materialName,
    required double quantity,
    required String unit,
    @Default(0.0) double minLevel,
  }) = _InventoryEntity;
}
