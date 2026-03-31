import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_entity.freezed.dart';

@freezed
abstract class BusinessEntity with _$BusinessEntity {
  const factory BusinessEntity({
    required String id,
    required String name,
    required String type,
    @Default(0.0) double monthlyRevenue,
    @Default(0) int employeesCount,
    @Default(true) bool isActive,
    @Default('') String address,
    @Default('') String userId,
    DateTime? createdAt,
  }) = _BusinessEntity;
}
