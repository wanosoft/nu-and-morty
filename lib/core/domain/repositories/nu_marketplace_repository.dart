import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';

abstract class NuMarketplaceRepository {
  Future<Result<CostumerOffersEntity>> getCostumerOffers();
  Future<Result<PurchaseOfferEntity>> purchaseOffer(String id);
}
