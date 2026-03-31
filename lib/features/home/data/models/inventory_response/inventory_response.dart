import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_response.freezed.dart';
part 'inventory_response.g.dart';

@freezed
abstract class InventoryResponse with _$InventoryResponse {
  const factory InventoryResponse({
    required String id,
    required String materialName,
    @Default(0.0) double quantity,
    @Default('kg') String unit,
    @Default(0.0) double minLevel,
  }) = _InventoryResponse;

  factory InventoryResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryResponseFromJson(json);
}
