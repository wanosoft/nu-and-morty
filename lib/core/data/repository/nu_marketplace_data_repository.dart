import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/repository/nu_marketplace_repository.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/mapper.dart';

@LazySingleton(as: NuMarketplaceRepository)
class NuMarketplaceDataRepository implements NuMarketplaceRepository {
  NuMarketplaceDataRepository(this._remoteDataSource);

  final NuMarketplaceRemoteDataSource _remoteDataSource;

  @override
  Future<Result<GetCostumerAndOffersEntity>> getCostumerAndOffers() async {
    try {
      final model = await _remoteDataSource.getCostumerAndOffersModel();
      final entity = getCostumerAndOffersEntityMapper(model);
      return Result.success(entity);
    } on ServerException {
      return Result.failure(ServerFailure());
    } catch (error) {
      return Result.failure(UnknownFailure());
    }
  }
}
