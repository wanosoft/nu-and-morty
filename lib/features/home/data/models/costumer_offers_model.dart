import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'costumer_offers_model.g.dart';

@JsonSerializable()
class CostumerOffersModel extends Equatable {
  final String name;
  final int balance;
  final List<OfferModel> offers;

  const CostumerOffersModel({
    required this.name,
    required this.balance,
    required this.offers,
  });

  factory CostumerOffersModel.fromJson(Map<String, dynamic> json) =>
      _$CostumerOffersModelFromJson(json);

  Map<String, dynamic> toJson() => _$CostumerOffersModelToJson(this);

  @override
  List<Object> get props => [name, balance, offers];
}

@JsonSerializable()
class OfferModel extends Equatable {
  final String id;
  final int price;
  final ProductModel product;

  const OfferModel({
    required this.id,
    required this.price,
    required this.product,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);

  @override
  List<Object> get props => [id, price, product];
}

@JsonSerializable()
class ProductModel extends Equatable {
  final String name;

  final String description;

  @JsonKey(name: 'image')
  final String imageUrl;

  const ProductModel({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  @override
  List<Object> get props => [name, description, imageUrl];
}
