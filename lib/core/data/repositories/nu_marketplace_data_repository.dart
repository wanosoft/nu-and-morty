import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart';
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/mapper.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';
import 'package:nu_and_morty/features/purchase/domain/mapper.dart';

@LazySingleton(as: NuMarketplaceRepository)
class NuMarketplaceDataRepository implements NuMarketplaceRepository {
  NuMarketplaceDataRepository(this._remoteDataSource);

  final NuMarketplaceRemoteDataSource _remoteDataSource;

  @override
  Future<Result<CostumerOffersEntity>> getCostumerOffers() async {
    try {
      final model = await _remoteDataSource.getCostumerOffers();
      final entity = costumerOffersEntityMapper(model);
      return Result.success(entity);
    } on ServerException {
      return Result.failure(ServerFailure());
    } catch (error) {
      return Result.failure(UnknownFailure());
    }
  }

  @override
  Future<Result<PurchaseOfferEntity>> purchaseOffer(String id) async {
    try {
      final model = await _remoteDataSource.purchaseOffer(id);
      final entity = purchaseOfferEntityMapper(model);
      return Result.success(entity);
    } on NuMarketplaceException catch (error) {
      return Result.failure(NuMarketplaceFailure(error.message));
    } on ServerException {
      return Result.failure(ServerFailure());
    } catch (error) {
      return Result.failure(UnknownFailure());
    }
  }
}
