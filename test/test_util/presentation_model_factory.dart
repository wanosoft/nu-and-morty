import 'package:nu_and_morty/features/home/presentation/model/costumer_offers.dart';

const _id = 'id';
const _monyValue = 1;
const _name = 'name';

Product createProduct({
  String id = _id,
  String name = _name,
  String description = 'description',
  String imageUrl = 'imageUrl',
}) =>
    Product(
      id: id,
      name: name,
      description: description,
      imageUrl: imageUrl,
    );

Offer createOffer({
  String id = _id,
  int price = _monyValue,
  Product? product,
}) =>
    Offer(
      id: id,
      price: price,
      product: product ?? createProduct(),
    );

CostumerOffers createCostumerOffers({
  String id = _id,
  String name = _name,
  int balance = _monyValue,
  List<Offer>? offers,
}) =>
    CostumerOffers(
      id: id,
      name: name,
      balance: balance,
      offers: offers ?? [createOffer()],
    );
