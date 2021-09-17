import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';
import 'package:nu_and_morty/features/home/domain/use_case/get_costumer_and_offers_use_case.dart';
import '../../../../test_util/entity_factory.dart';
import '../../../../test_util/mock_factory.mocks.dart';
import '../../../../test_util/test_common.dart';

void main() {
  group('get costumer and offers use case', () {
    late MockNuMarketplaceRepository repository;
    late GetCostumerAndOffersUseCase useCase;

    setUp(() {
      repository = MockNuMarketplaceRepository();
      useCase = GetCostumerAndOffersUseCase(repository);
    });

    void verifyCall() {
      verify(repository.getCostumerAndOffers());
      verifyNoMoreInteractions(repository);
    }

    test('should return a success result', () async {
      final expectedEntity = createGetCostumerAndOffersEntity();

      when(repository.getCostumerAndOffers()).thenAnswer(
        (_) async => Result.success(expectedEntity),
      );

      final result = await useCase(noParams);

      expect(result, isA<SuccessResult<GetCostumerAndOffersEntity>>());
      expect(result.asSuccess.value, expectedEntity);
      verifyCall();
    });

    group('should fail', () {
      void stub() => repository.getCostumerAndOffers();

      void call() => useCase(NoParams());

      testServerFailure<GetCostumerAndOffersEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );

      testUnknownFailure<GetCostumerAndOffersEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );
    });
  });
}
