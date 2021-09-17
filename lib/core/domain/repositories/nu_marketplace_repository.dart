import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';

abstract class NuMarketplaceRepository {
  Future<Result<CostumerOffersEntity>> getCostumerOffers();
}
