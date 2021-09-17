import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';

import '../../../test_util/json_factory.dart';
import '../../../test_util/model_factory.dart';
import '../../../test_util/params_factory.dart';
import '../../../test_util/test_common.dart';
import '../../../test_util/mock_factory.mocks.dart';

void main() {
  late MockGraphQLClient client;
  late NuMarketplaceRemoteDataSource marketplaceRemoteDataSource;

  setUp(() {
    client = MockGraphQLClient();
    marketplaceRemoteDataSource = NuMarketplaceRemoteDataSourceImpl(client);
  });

  group('nu marketplace remote data source', () {
    void stubQuery(Map<String, dynamic> data) =>
        when(client.query(any)).thenAnswer(
          (_) async => QueryResult(
            data: data,
            source: QueryResultSource.network,
          ),
        );

    void verifyCall() {
      verify(client.query(any));
      verifyNoMoreInteractions(client);
    }

    group('get costumer offers', () {
      test('should success with expected model', () async {
        stubQuery({
          'viewer': costumerOffersJson,
        });
        final expectedModel = createCostumerOffersModel();

        final result = await marketplaceRemoteDataSource.getCostumerOffers();

        expect(result, expectedModel);
        verifyCall();
      });

      testDataSourceServerException(
        stub: () => client.query(any),
        call: () => marketplaceRemoteDataSource.getCostumerOffers(),
        verify: () => verifyCall(),
      );
    });

    group('purchase offer', () {
      test('should success with expected model', () async {
        stubQuery({'purchase': purchaseOfferJson});
        final expectedModel = createPurchaseOfferModel();

        final result = await marketplaceRemoteDataSource.purchaseOffer(offerId);

        expect(result, expectedModel);
        verifyCall();
      });

      group('should fail', () {
        testDataSourceServerException(
          stub: () => client.query(any),
          call: () => marketplaceRemoteDataSource.getCostumerOffers(),
          verify: () => verifyCall(),
        );

        test('should return nu marketplace exception', () {
          var json = purchaseOfferJson.map(
            (key, value) => MapEntry(key, value),
          );
          json.update('errorMessage', (_) => message);
          json.update('success', (_) => false);
          stubQuery({'purchase': json});

          final call = marketplaceRemoteDataSource.purchaseOffer;

          expect(call(offerId), throwsA(isA<NuMarketplaceException>()));
          verifyCall();
        });
      });
    });
  });
}
