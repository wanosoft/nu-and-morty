// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseOfferModel _$PurchaseOfferModelFromJson(Map<String, dynamic> json) =>
    PurchaseOfferModel(
      costumerOffers: CostumerOffersModel.fromJson(
          json['costumer'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$PurchaseOfferModelToJson(PurchaseOfferModel instance) =>
    <String, dynamic>{
      'costumer': instance.costumerOffers.toJson(),
      'errorMessage': instance.errorMessage,
      'success': instance.success,
    };
