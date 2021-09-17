import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/purchase/presentation/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/presentation_model_factory.dart';

void main() {
  group('mapper', () {
    test('should map purchase offer entity to presentation model', () {
      final entity = createPurchaseOfferEntity();
      final expectedModel = createPurchaseOffer();

      final result = purchaseOfferMapper(entity);

      expect(result, expectedModel);
    });
  });
}
