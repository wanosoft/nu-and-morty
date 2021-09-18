import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/features/get_costumer_data/presentation/models/costumer_offers.dart';

CostumerOffers costumerOffersMapper(
  CostumerOffersEntity entity,
) =>
    CostumerOffers(
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
      name: entity.name,
      description: entity.description,
      imageUrl: entity.imageUrl,
    );
