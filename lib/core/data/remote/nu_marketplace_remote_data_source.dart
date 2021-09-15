import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/data/constants.dart';
import 'package:nu_and_morty/features/home/data/models/get_costumer_and_offers_model.dart';

abstract class NuMarketplaceRemoteDataSource {
  Future<GetCostumerAndOffersModel> getCostumerAndOffersModel();
}

@LazySingleton(as: NuMarketplaceRemoteDataSource)
class NuMarketplaceRemoteDataSourceImpl
    implements NuMarketplaceRemoteDataSource {
  const NuMarketplaceRemoteDataSourceImpl(this._client);

  final GraphQLClient _client;

  @override
  Future<GetCostumerAndOffersModel> getCostumerAndOffersModel() async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(GraphQLQueries.getCostumerAndOffersQuery),
      ));
      return GetCostumerAndOffersModel.fromJson(result.data?['viewer']);
    } on Exception {
      throw const ServerException();
    }
  }
}
