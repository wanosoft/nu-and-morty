import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/data/constants.dart';
import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';
import 'package:nu_and_morty/features/purchase/data/models/purchase_offer_model.dart';

abstract class NuMarketplaceRemoteDataSource {
  Future<CostumerOffersModel> getCostumerOffers();
  Future<PurchaseOfferModel> purchaseOffer(String offerId);
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

  @override
  Future<PurchaseOfferModel> purchaseOffer(String offerId) async {
    try {
      final result = await _client.query(
        QueryOptions(
          document: gql(GraphQLQueries.purchaseOrder),
          variables: {'offerId': offerId},
        ),
      );
      if (result.hasException) {
        throw const ServerException();
      } else {
        final model = PurchaseOfferModel.fromJson(result.data?['purchase']);
        if (model.success) {
          return model;
        }
        throw NuMarketplaceException(model.errorMessage!);
      }
    } on NuMarketplaceException {
      rethrow;
    } on Exception {
      throw const ServerException();
    }
  }
}

class NuMarketplaceException implements Exception {
  final String message;

  const NuMarketplaceException(this.message);
}
