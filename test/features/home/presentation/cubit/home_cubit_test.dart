import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/presentation/cubit/home_cubit.dart';

import '../../../../test_util/entity_factory.dart';
import '../../../../test_util/mock_factory.mocks.dart';

void main() {
  late MockGetCostumerOffersUseCase useCase;
  late HomeCubit homeCubit;

  setUp(() {
    useCase = MockGetCostumerOffersUseCase();
    homeCubit = HomeCubit(useCase);
  });

  tearDown(() => homeCubit.close());

  group('home cubit', () {
    test(
      'should have initial state as [HomeLoading]',
      () => expect(homeCubit.state, HomeLoading()),
    );

    blocTest(
      'should emit [HomeLoading], [HomeDataLoaded] state at success result.',
      build: () => homeCubit,
      act: (HomeCubit cubit) {
        final entity = createCostumerOffersEntity();
        when(useCase(any)).thenAnswer(
          (_) async => Result.success(entity),
        );

        cubit.getCostumerAndOffers();
      },
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeDataLoaded>(),
      ],
      verify: (_) {
        verify(useCase(any));
        verifyNoMoreInteractions(useCase);
      },
    );

    blocTest(
      'should emit [HomeLoading], [HomeError] state at faliure result.',
      build: () => homeCubit,
      act: (HomeCubit cubit) {
        final failure = ServerFailure();
        when(useCase(any)).thenAnswer(
          (_) async => Result.failure(failure),
        );

        cubit.getCostumerAndOffers();
      },
      expect: () => [
        isA<HomeLoading>(),
        isA<HomeError>(),
      ],
      verify: (_) {
        verify(useCase(any));
        verifyNoMoreInteractions(useCase);
      },
    );
  });
}
