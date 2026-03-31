import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_response.freezed.dart';
part 'business_response.g.dart';

@freezed
abstract class BusinessResponse with _$BusinessResponse {
  const factory BusinessResponse({
    required String id,
    required String name,
    @Default('other') String type,
    @Default(0.0) double monthlyRevenue,
    @Default(0) int employeesCount,
    @Default(true) bool isActive,
    @Default('') String address,
    @Default('') String userId,
    @JsonKey(
      fromJson: _timestampToDateTime,
      toJson: _dateTimeToTimestamp,
    )
    DateTime? createdAt,
  }) = _BusinessResponse;

  factory BusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessResponseFromJson(json);
}

DateTime? _timestampToDateTime(dynamic value) {
  if (value == null) return null;
  if (value is Timestamp) return value.toDate();
  if (value is String) return DateTime.tryParse(value);
  return null;
}

dynamic _dateTimeToTimestamp(DateTime? date) =>
    date != null ? Timestamp.fromDate(date) : null;
