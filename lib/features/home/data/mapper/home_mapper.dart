import 'package:zync_gum/features/home/data/models/business_response/business_response.dart';
import 'package:zync_gum/features/home/data/models/inventory_response/inventory_response.dart';
import 'package:zync_gum/features/home/data/models/production_line_response/production_line_response.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';

sealed class HomeMapper {
 const HomeMapper._();

  static ProductionLineEntity toProductionLineEntity(
    ProductionLineResponse response,
  ) =>
      ProductionLineEntity(
        id: response.id,
        flavor: response.flavor,
        status: response.status,
        progressPercent: response.progressPercent,
        temperature: response.temperature,
        dailyTarget: response.dailyTarget,
        produced: response.produced,
      );

  static InventoryEntity toInventoryEntity(InventoryResponse response) =>
      InventoryEntity(
        id: response.id,
        materialName: response.materialName,
        quantity: response.quantity,
        unit: response.unit,
        minLevel: response.minLevel,
      );

  static BusinessEntity toBusinessEntity(BusinessResponse response) =>
      BusinessEntity(
        id: response.id,
        name: response.name,
        type: response.type,
        monthlyRevenue: response.monthlyRevenue,
        employeesCount: response.employeesCount,
        isActive: response.isActive,
        address: response.address,
        userId: response.userId,
        createdAt: response.createdAt,
      );
}
