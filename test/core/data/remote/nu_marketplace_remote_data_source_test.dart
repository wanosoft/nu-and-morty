import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';

import '../../../test_util/json_factory.dart';
import '../../../test_util/model_factory.dart';
import 'nu_marketplace_remote_data_source_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  late MockGraphQLClient client;
  late NuMarketplaceRemoteDataSource marketplaceRemoteDataSource;

  setUp(() {
    client = MockGraphQLClient();
    marketplaceRemoteDataSource = NuMarketplaceRemoteDataSoucerImpl(client);
  });

  void stubQuery(Map<String, dynamic> data) =>
      when(client.query(any)).thenAnswer(
        (_) => SynchronousFuture(QueryResult(
          data: data,
          source: QueryResultSource.network,
        )),
      );

  group('nu marketplace remote data source', () {
    test('should success with expected model', () async {
      stubQuery({
        'viewer': getCostumerAndOffersJson,
      });
      final expectedModel = createGetCostumerAndOffersModel();

      final result =
          await marketplaceRemoteDataSource.getCostumerAndOffersModel();

      expect(result, expectedModel);
      verify(client.query(any));
      verifyNoMoreInteractions(client);
    });
  });
}
