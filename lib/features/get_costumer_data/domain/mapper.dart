import 'package:nu_and_morty/features/get_costumer_data/data/models/costumer_offers_model.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';

CostumerOffersEntity costumerOffersEntityMapper(
  CostumerOffersModel model,
) =>
    CostumerOffersEntity(
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
      name: model.name,
      description: model.description,
      imageUrl: model.imageUrl,
    );
