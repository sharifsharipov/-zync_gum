import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_line_entity.freezed.dart';

@freezed
abstract class ProductionLineEntity with _$ProductionLineEntity {
  const factory ProductionLineEntity({
    required String id,
    required String flavor,
    required String status,
    required double progressPercent,
    required double temperature,
    @Default(0) int dailyTarget,
    @Default(0) int produced,
  }) = _ProductionLineEntity;
}
