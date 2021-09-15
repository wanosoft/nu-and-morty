import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/home/domain/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/model_factory.dart';

void main() {
  group('mapper', () {
    test('should map get costumer and offers model to entity', () {
      final model = createGetCostumerAndOffersModel();
      final expectedEntity = createGetCostumerAndOffersEntity();

      final result = getCostumerAndOffersEntityMapper(model);

      expect(result, expectedEntity);
    });
  });
}
