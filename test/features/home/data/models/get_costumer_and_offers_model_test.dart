import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/home/data/models/get_costumer_and_offers_model.dart';

import '../../../../test_util/json_factory.dart';
import '../../../../test_util/model_factory.dart';

void main() {
  group('get costumer and offers model', () {
    test('should map data from json', () {
      final expectedModel = createGetCostumerAndOffersModel();

      final result = GetCostumerAndOffersModel.fromJson(
        getCostumerAndOffersJson,
      );

      expect(result, expectedModel);
    });
  });
}
