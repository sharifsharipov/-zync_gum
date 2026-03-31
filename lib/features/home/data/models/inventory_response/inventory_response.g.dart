// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryResponse _$InventoryResponseFromJson(Map<String, dynamic> json) =>
    _InventoryResponse(
      id: json['id'] as String,
      materialName: json['materialName'] as String,
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0.0,
      unit: json['unit'] as String? ?? 'kg',
      minLevel: (json['minLevel'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$InventoryResponseToJson(_InventoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'materialName': instance.materialName,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'minLevel': instance.minLevel,
    };
