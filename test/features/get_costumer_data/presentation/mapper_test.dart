import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/get_costumer_data/presentation/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/presentation_model_factory.dart';

void main() {
  group('mapper', () {
    test('should map get costumer and offers entity to presentation model', () {
      final entity = createCostumerOffersEntity();
      final expectedModel = createCostumerOffers();

      final result = costumerOffersMapper(entity);

      expect(result, expectedModel);
    });
  });
}
