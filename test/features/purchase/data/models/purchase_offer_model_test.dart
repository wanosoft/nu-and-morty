import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/purchase/data/models/purchase_offer_model.dart';

import '../../../../test_util/json_factory.dart';
import '../../../../test_util/model_factory.dart';

void main() {
  group('purchase offer model', () {
    test('should map data from json', () {
      final expectedModel = createPurchaseOfferModel();

      final result = PurchaseOfferModel.fromJson(purchaseOfferJson);

      expect(result, expectedModel);
    });
  });
}
