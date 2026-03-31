import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_line_response.freezed.dart';
part 'production_line_response.g.dart';

@freezed
abstract class ProductionLineResponse with _$ProductionLineResponse {
  const factory ProductionLineResponse({
    required String id,
    required String flavor,
    @Default('idle') String status,
    @Default(0.0) double progressPercent,
    @Default(0.0) double temperature,
    @Default(0) int dailyTarget,
    @Default(0) int produced,
  }) = _ProductionLineResponse;

  factory ProductionLineResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductionLineResponseFromJson(json);
}
