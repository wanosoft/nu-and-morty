import 'package:flutter_test/flutter_test.dart';
import 'package:nu_and_morty/features/home/domain/mapper.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/model_factory.dart';

void main() {
  group('mapper', () {
    test('should map costumer offers model to entity', () {
      final model = createCostumerOffersModel();
      final expectedEntity = createCostumerOffersEntity();

      final result = costumerOffersEntityMapper(model);

      expect(result, expectedEntity);
    });
  });
}
