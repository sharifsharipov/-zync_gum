// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessResponse _$BusinessResponseFromJson(Map<String, dynamic> json) =>
    _BusinessResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String? ?? 'other',
      monthlyRevenue: (json['monthlyRevenue'] as num?)?.toDouble() ?? 0.0,
      employeesCount: (json['employeesCount'] as num?)?.toInt() ?? 0,
      isActive: json['isActive'] as bool? ?? true,
      address: json['address'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      createdAt: _timestampToDateTime(json['createdAt']),
    );

Map<String, dynamic> _$BusinessResponseToJson(_BusinessResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'monthlyRevenue': instance.monthlyRevenue,
      'employeesCount': instance.employeesCount,
      'isActive': instance.isActive,
      'address': instance.address,
      'userId': instance.userId,
      'createdAt': _dateTimeToTimestamp(instance.createdAt),
    };
