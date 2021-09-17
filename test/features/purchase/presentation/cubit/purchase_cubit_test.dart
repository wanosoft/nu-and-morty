import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/purchase/presentation/cubit/purchase_cubit.dart';

import '../../../../test_util/entity_factory.dart';
import '../../../../test_util/mock_factory.mocks.dart';
import '../../../../test_util/params_factory.dart';

void main() {
  late MockPurchaseOfferUseCase useCase;
  late PurchaseCubit purchaseCubit;

  setUp(() {
    useCase = MockPurchaseOfferUseCase();
    purchaseCubit = PurchaseCubit(useCase);
  });

  tearDown(() => purchaseCubit.close());

  group('purchase cubit', () {
    test(
      'should have initial state as [PurchaseInitial]',
      () => expect(purchaseCubit.state, PurchaseInitial()),
    );

    blocTest(
      'should emit [PurchaseLoading], [PurchaseSuccess] state at success result.',
      build: () => purchaseCubit,
      act: (PurchaseCubit cubit) {
        final entity = createPurchaseOfferEntity();
        when(useCase(any)).thenAnswer(
          (_) async => Result.success(entity),
        );

        cubit.onPurchaseOffer(offerId);
      },
      expect: () => [
        isA<PurchaseLoading>(),
        isA<PurchaseSuccess>(),
      ],
      verify: (_) {
        verify(useCase(offerId));
        verifyNoMoreInteractions(useCase);
      },
    );

    blocTest(
      'should emit [PurchaseLoading], [PurchaseError] state at failure result.',
      build: () => purchaseCubit,
      act: (PurchaseCubit cubit) {
        final failure = NuMarketplaceFailure(message);
        when(useCase(any)).thenAnswer(
          (_) async => Result.failure(failure),
        );

        cubit.onPurchaseOffer(offerId);
      },
      expect: () => [
        isA<PurchaseLoading>(),
        isA<PurchaseError>(),
      ],
      verify: (_) {
        verify(useCase(offerId));
        verifyNoMoreInteractions(useCase);
      },
    );
  });
}
