import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';
import 'package:nu_and_morty/features/home/presentation/model/get_costumer_and_offers.dart';

GetCostumerAndOffers getCostumerAndOffersMapper(
  GetCostumerAndOffersEntity entity,
) =>
    GetCostumerAndOffers(
      id: entity.id,
      name: entity.name,
      balance: entity.balance,
      offers: entity.offers.map(offerMapper).toList(),
    );

Offer offerMapper(OfferEntity entity) => Offer(
      id: entity.id,
      price: entity.price,
      product: productMapper(entity.product),
    );

Product productMapper(ProductEntity entity) => Product(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      imageUrl: entity.imageUrl,
    );
