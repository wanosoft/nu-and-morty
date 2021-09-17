import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/purchase/domain/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/model_factory.dart';

void main() {
  group('mapper', () {
    test('should map purchase offer model to entity', () {
      final model = createPurchaseOfferModel();
      final expectedEntity = createPurchaseOfferEntity();

      final result = purchaseOfferEntityMapper(model);

      expect(result, expectedEntity);
    });
  });
}
