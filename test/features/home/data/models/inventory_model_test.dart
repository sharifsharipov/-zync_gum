import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/features/home/data/mapper/home_mapper.dart';
import 'package:zync_gum/features/home/data/models/inventory_response/inventory_response.dart';

void main() {
  group('InventoryResponse', () {
    test('fromJson creates correct model', () {
      final json = {
        'id': '1',
        'materialName': 'Sugar',
        'quantity': 500.0,
        'unit': 'kg',
        'minLevel': 100.0,
      };

      final model = InventoryResponse.fromJson(json);

      expect(model.id, '1');
      expect(model.materialName, 'Sugar');
      expect(model.quantity, 500.0);
      expect(model.unit, 'kg');
      expect(model.minLevel, 100.0);
    });

    test('fromJson with defaults', () {
      final json = {'id': '1', 'materialName': 'Sugar'};

      final model = InventoryResponse.fromJson(json);

      expect(model.quantity, 0.0);
      expect(model.unit, 'kg');
      expect(model.minLevel, 0.0);
    });

    test('HomeMapper.toInventoryEntity maps correctly', () {
      const response = InventoryResponse(
        id: '1',
        materialName: 'Sugar',
        quantity: 500.0,
        unit: 'kg',
        minLevel: 100.0,
      );

      final entity = HomeMapper.toInventoryEntity(response);

      expect(entity.id, '1');
      expect(entity.materialName, 'Sugar');
      expect(entity.quantity, 500.0);
      expect(entity.unit, 'kg');
      expect(entity.minLevel, 100.0);
    });
  });
}
