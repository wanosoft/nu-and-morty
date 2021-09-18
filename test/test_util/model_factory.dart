import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';
import 'package:nu_and_morty/features/purchase/data/models/purchase_offer_model.dart';

const _id = 'id';
const _monyValue = 1;
const _name = 'name';

ProductModel createProductModel({
  String id = _id,
  String name = _name,
  String description = 'description',
  String imageUrl = 'imageUrl',
}) =>
    ProductModel(
      name: name,
      description: description,
      imageUrl: imageUrl,
    );

OfferModel createOfferModel({
  String id = _id,
  int price = _monyValue,
  ProductModel? product,
}) =>
    OfferModel(
      id: id,
      price: price,
      product: product ?? createProductModel(),
    );

CostumerOffersModel createCostumerOffersModel({
  String id = _id,
  String name = _name,
  int balance = _monyValue,
  List<OfferModel>? offers,
}) =>
    CostumerOffersModel(
      name: name,
      balance: balance,
      offers: offers ?? [createOfferModel()],
    );

PurchaseOfferModel createPurchaseOfferModel({
  int balance = _monyValue,
  String? errorMessage,
  bool success = true,
}) =>
    PurchaseOfferModel(
      balance: balance,
      errorMessage: errorMessage,
      success: success,
    );
