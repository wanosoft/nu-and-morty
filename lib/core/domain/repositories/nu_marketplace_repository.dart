import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';

abstract class NuMarketplaceRepository {
  Future<Result<GetCostumerAndOffersEntity>> getCostumerAndOffers();
}
