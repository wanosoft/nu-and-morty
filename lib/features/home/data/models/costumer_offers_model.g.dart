// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'costumer_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CostumerOffersModel _$CostumerOffersModelFromJson(Map<String, dynamic> json) =>
    CostumerOffersModel(
      id: json['id'] as String,
      name: json['name'] as String,
      balance: json['balance'] as int,
      offers: (json['offers'] as List<dynamic>)
          .map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CostumerOffersModelToJson(
        CostumerOffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'offers': instance.offers.map((e) => e.toJson()).toList(),
    };

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => OfferModel(
      id: json['id'] as String,
      price: json['price'] as int,
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'product': instance.product.toJson(),
    };

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['image'] as String,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.imageUrl,
    };
