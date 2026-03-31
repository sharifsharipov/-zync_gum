import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/features/home/data/mapper/home_mapper.dart';
import 'package:zync_gum/features/home/data/models/production_line_response/production_line_response.dart';

void main() {
  group('ProductionLineResponse', () {
    test('fromJson creates correct model', () {
      final json = {
        'id': '1',
        'flavor': 'Mint',
        'status': 'running',
        'progressPercent': 75.0,
        'temperature': 36.5,
        'dailyTarget': 1000,
        'produced': 750,
      };

      final model = ProductionLineResponse.fromJson(json);

      expect(model.id, '1');
      expect(model.flavor, 'Mint');
      expect(model.status, 'running');
      expect(model.progressPercent, 75.0);
      expect(model.temperature, 36.5);
      expect(model.dailyTarget, 1000);
      expect(model.produced, 750);
    });

    test('fromJson with defaults', () {
      final json = {'id': '1', 'flavor': 'Mint'};

      final model = ProductionLineResponse.fromJson(json);

      expect(model.status, 'idle');
      expect(model.progressPercent, 0.0);
      expect(model.temperature, 0.0);
      expect(model.dailyTarget, 0);
      expect(model.produced, 0);
    });

    test('HomeMapper.toProductionLineEntity maps correctly', () {
      const response = ProductionLineResponse(
        id: '1',
        flavor: 'Mint',
        status: 'running',
        progressPercent: 75.0,
        temperature: 36.5,
        dailyTarget: 1000,
        produced: 750,
      );

      final entity = HomeMapper.toProductionLineEntity(response);

      expect(entity.id, '1');
      expect(entity.flavor, 'Mint');
      expect(entity.status, 'running');
      expect(entity.progressPercent, 75.0);
      expect(entity.temperature, 36.5);
      expect(entity.dailyTarget, 1000);
      expect(entity.produced, 750);
    });
  });
}
