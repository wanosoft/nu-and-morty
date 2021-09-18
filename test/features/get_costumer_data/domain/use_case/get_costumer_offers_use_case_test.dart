import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/use_case/get_costumer_offers_use_case.dart';

import '../../../../test_util/entity_factory.dart';
import '../../../../test_util/mock_factory.mocks.dart';
import '../../../../test_util/test_common.dart';

void main() {
  group('get costumer offers use case', () {
    late MockNuMarketplaceRepository repository;
    late GetCostumerOffersUseCase useCase;

    setUp(() {
      repository = MockNuMarketplaceRepository();
      useCase = GetCostumerOffersUseCase(repository);
    });

    void verifyCall() {
      verify(repository.getCostumerOffers());
      verifyNoMoreInteractions(repository);
    }

    test('should return a success result', () async {
      final expectedEntity = createCostumerOffersEntity();

      when(repository.getCostumerOffers()).thenAnswer(
        (_) async => Result.success(expectedEntity),
      );

      final result = await useCase(noParams);

      expect(result, isA<SuccessResult<CostumerOffersEntity>>());
      expect(result.asSuccess.value, expectedEntity);
      verifyCall();
    });

    group('should fail', () {
      void stub() => repository.getCostumerOffers();

      void call() => useCase(NoParams());

      testServerFailure<CostumerOffersEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );

      testUnknownFailure<CostumerOffersEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );
    });
  });
}
