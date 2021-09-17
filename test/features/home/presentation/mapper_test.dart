import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/home/presentation/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/presentation_model_factory.dart';

void main() {
  group('mapper', () {
    test('should map get costumer and offers entity to presentation model', () {
      final entity = createGetCostumerAndOffersEntity();
      final expectedModel = createGetCostumerAndOffers();

      final result = getCostumerAndOffersMapper(entity);

      expect(result, expectedModel);
    });
  });
}
