import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/data/repository/nu_marketplace_data_repository.dart';
import 'package:nu_and_morty/core/domain/repository/nu_marketplace_repository.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';

import '../../../test_util/entity_factory.dart';
import '../../../test_util/model_factory.dart';
import '../../../test_util/mock_factory.mocks.dart';
import '../../../test_util/test_common.dart';

void main() {
  late MockNuMarketplaceRemoteDataSource remoteDataSource;
  late NuMarketplaceRepository repository;

  setUp(() {
    remoteDataSource = MockNuMarketplaceRemoteDataSource();
    repository = NuMarketplaceDataRepository(remoteDataSource);
  });

  group('nu marketplace data repository', () {
    group('get costumer and offers', () {
      void verifyCall() {
        verify(remoteDataSource.getCostumerAndOffersModel());
        verifyNoMoreInteractions(remoteDataSource);
      }

      test('should return succesfully costumer and offers entity', () async {
        final model = createGetCostumerAndOffersModel();
        final expectedEntity = createGetCostumerAndOffersEntity();

        when(remoteDataSource.getCostumerAndOffersModel()).thenAnswer(
          (_) async => model,
        );

        final result = await repository.getCostumerAndOffers();

        expect(
          result,
          isA<SuccessResult<GetCostumerAndOffersEntity>>().having(
            (result) => result.value,
            'value',
            equals(expectedEntity),
          ),
        );
        verifyCall();
      });

      group('should fail', () {
        void stub() => remoteDataSource.getCostumerAndOffersModel();
        void call() => repository.getCostumerAndOffers();

        testRepositoryServerFailure(
          stub: stub,
          call: call,
          verify: verifyCall,
        );

        testRepositoryUnknownFailure(
          stub: stub,
          call: call,
          verify: verifyCall,
        );
      });
    });
  });
}
