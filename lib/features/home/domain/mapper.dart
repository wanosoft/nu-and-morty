import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';

CostumerOffersEntity costumerOffersEntityMapper(
  CostumerOffersModel model,
) =>
    CostumerOffersEntity(
      id: model.id,
      name: model.name,
      balance: model.balance,
      offers: model.offers.map(offerEntityMapper).toList(),
    );

OfferEntity offerEntityMapper(OfferModel model) => OfferEntity(
      id: model.id,
      price: model.price,
      product: productEntityMapper(model.product),
    );

ProductEntity productEntityMapper(ProductModel model) => ProductEntity(
      id: model.id,
      name: model.name,
      description: model.description,
      imageUrl: model.imageUrl,
    );
