import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/data/constants.dart';
import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';

abstract class NuMarketplaceRemoteDataSource {
  Future<CostumerOffersModel> getCostumerOffers();
}

@LazySingleton(as: NuMarketplaceRemoteDataSource)
class NuMarketplaceRemoteDataSourceImpl
    implements NuMarketplaceRemoteDataSource {
  const NuMarketplaceRemoteDataSourceImpl(this._client);

  final GraphQLClient _client;

  @override
  Future<CostumerOffersModel> getCostumerOffers() async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(GraphQLQueries.getCostumerOffersQuery),
      ));
      if (result.hasException) {
        throw const ServerException();
      } else {
        return CostumerOffersModel.fromJson(result.data?['viewer']);
      }
    } on Exception {
      throw const ServerException();
    }
  }
}
