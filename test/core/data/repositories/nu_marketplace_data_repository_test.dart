import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/data/repositories/nu_marketplace_data_repository.dart';
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';

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
    group('get costumer offers', () {
      void verifyCall() {
        verify(remoteDataSource.getCostumerOffers());
        verifyNoMoreInteractions(remoteDataSource);
      }

      test('should return succesfully costumer offers entity', () async {
        final model = createCostumerOffersModel();
        final expectedEntity = createCostumerOffersEntity();

        when(remoteDataSource.getCostumerOffers()).thenAnswer(
          (_) async => model,
        );

        final result = await repository.getCostumerOffers();

        expect(
          result,
          isA<SuccessResult<CostumerOffersEntity>>().having(
            (result) => result.value,
            'value',
            equals(expectedEntity),
          ),
        );
        verifyCall();
      });

      group('should fail', () {
        void stub() => remoteDataSource.getCostumerOffers();
        void call() => repository.getCostumerOffers();

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
