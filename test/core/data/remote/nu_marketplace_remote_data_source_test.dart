import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';

import '../../../test_util/json_factory.dart';
import '../../../test_util/model_factory.dart';
import '../../../test_util/test_common.dart';
import '../../../test_util/mock_factory.mocks.dart';

void main() {
  late MockGraphQLClient client;
  late NuMarketplaceRemoteDataSource marketplaceRemoteDataSource;

  setUp(() {
    client = MockGraphQLClient();
    marketplaceRemoteDataSource = NuMarketplaceRemoteDataSourceImpl(client);
  });

  void stubQuery(Map<String, dynamic> data) =>
      when(client.query(any)).thenAnswer(
        (_) async => QueryResult(
          data: data,
          source: QueryResultSource.network,
        ),
      );

  group('nu marketplace remote data source', () {
    group('get costumer and offers', () {
      void verifyCall() {
        verify(client.query(any));
        verifyNoMoreInteractions(client);
      }

      test('should success with expected model', () async {
        stubQuery({
          'viewer': getCostumerAndOffersJson,
        });
        final expectedModel = createGetCostumerAndOffersModel();

        final result =
            await marketplaceRemoteDataSource.getCostumerAndOffersModel();

        expect(result, expectedModel);
      });

      testDataSourceServerException(
        stub: () => client.query(any),
        call: () => marketplaceRemoteDataSource.getCostumerAndOffersModel(),
        verify: () => verifyCall(),
      );
    });
  });
}
