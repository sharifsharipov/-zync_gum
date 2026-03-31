// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_line_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductionLineResponse _$ProductionLineResponseFromJson(
  Map<String, dynamic> json,
) => _ProductionLineResponse(
  id: json['id'] as String,
  flavor: json['flavor'] as String,
  status: json['status'] as String? ?? 'idle',
  progressPercent: (json['progressPercent'] as num?)?.toDouble() ?? 0.0,
  temperature: (json['temperature'] as num?)?.toDouble() ?? 0.0,
  dailyTarget: (json['dailyTarget'] as num?)?.toInt() ?? 0,
  produced: (json['produced'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ProductionLineResponseToJson(
  _ProductionLineResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'flavor': instance.flavor,
  'status': instance.status,
  'progressPercent': instance.progressPercent,
  'temperature': instance.temperature,
  'dailyTarget': instance.dailyTarget,
  'produced': instance.produced,
};
