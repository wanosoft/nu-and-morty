import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';

const _id = 'id';
const _monyValue = 1;
const _name = 'name';

final noParams = NoParams();

ProductEntity createProductEntity({
  String id = _id,
  String name = _name,
  String description = 'description',
  String imageUrl = 'imageUrl',
}) =>
    ProductEntity(
      id: id,
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

GetCostumerAndOffersEntity createGetCostumerAndOffersEntity({
  String id = _id,
  String name = _name,
  int balance = _monyValue,
  List<OfferEntity>? offers,
}) =>
    GetCostumerAndOffersEntity(
      id: id,
      name: name,
      balance: balance,
      offers: offers ?? [createOfferEntity()],
    );
