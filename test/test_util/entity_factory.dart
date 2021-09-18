import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';

const _id = 'id';
const _monyValue = 1;
const _name = 'name';

final noParams = NoParams();

ProductEntity createProductEntity({
  String name = _name,
  String description = 'description',
  String imageUrl = 'imageUrl',
}) =>
    ProductEntity(
      name: name,
      description: description,
      imageUrl: imageUrl,
    );

OfferEntity createOfferEntity({
  String id = _id,
  int price = _monyValue,
  ProductEntity? product,
}) =>
    OfferEntity(
      id: id,
      price: price,
      product: product ?? createProductEntity(),
    );

CostumerOffersEntity createCostumerOffersEntity({
  String id = _id,
  String name = _name,
  int balance = _monyValue,
  List<OfferEntity>? offers,
}) =>
    CostumerOffersEntity(
      name: name,
      balance: balance,
      offers: offers ?? [createOfferEntity()],
    );

PurchaseOfferEntity createPurchaseOfferEntity({
  int balance = _monyValue,
  String? errorMessage,
  bool success = true,
}) =>
    PurchaseOfferEntity(
      balance: balance,
      errorMessage: errorMessage,
      success: success,
    );
