import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';

import '../../../../test_util/json_factory.dart';
import '../../../../test_util/model_factory.dart';

void main() {
  group('costumer offers model', () {
    test('should map data from json', () {
      final expectedModel = createCostumerOffersModel();

      final result = CostumerOffersModel.fromJson(
        costumerOffersJson,
      );

      expect(result, expectedModel);
    });
  });
}
