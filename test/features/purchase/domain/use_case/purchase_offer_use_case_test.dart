import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';
import 'package:nu_and_morty/features/purchase/domain/use_case/purchase_offer_use_case.dart';

import '../../../../test_util/entity_factory.dart';
import '../../../../test_util/mock_factory.mocks.dart';
import '../../../../test_util/params_factory.dart';
import '../../../../test_util/test_common.dart';

void main() {
  group('purchase offer use case ', () {
    late MockNuMarketplaceRepository repository;
    late PurchaseOfferUseCase useCase;

    setUp(() {
      repository = MockNuMarketplaceRepository();
      useCase = PurchaseOfferUseCase(repository);
    });

    void verifyCall() {
      verify(repository.purchaseOffer(offerId));
      verifyNoMoreInteractions(repository);
    }

    test('should return a success result', () async {
      final expectedEntity = createPurchaseOfferEntity();

      when(repository.purchaseOffer(any)).thenAnswer(
        (_) async => Result.success(expectedEntity),
      );

      final result = await useCase(offerId);

      expect(result, isA<SuccessResult<PurchaseOfferEntity>>());
      expect(result.asSuccess.value, expectedEntity);
      verifyCall();
    });

    group('should fail', () {
      void stub() => repository.purchaseOffer(any);

      void call() => useCase(offerId);

      testServerFailure<PurchaseOfferEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );

      testUnknownFailure<PurchaseOfferEntity>(
        stub: stub,
        call: call,
        verify: verifyCall,
      );

      test('should return nu marketplace failure', () async {
        when(repository.purchaseOffer(any)).thenAnswer(
          (_) async => Result.failure(NuMarketplaceFailure(message)),
        );

        final result = await useCase(offerId);

        expect(
          result,
          isA<FailureResult>().having(
            (result) => result.failure,
            'failure',
            isA<NuMarketplaceFailure>(),
          ),
        );
        verifyCall();
      });
    });
  });
}
