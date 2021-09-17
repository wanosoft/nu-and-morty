import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/features/home/presentation/model/costumer_offers.dart';

CostumerOffers costumerOffersMapper(
  CostumerOffersEntity entity,
) =>
    CostumerOffers(
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
