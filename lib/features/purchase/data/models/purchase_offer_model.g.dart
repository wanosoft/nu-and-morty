// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseOfferModel _$PurchaseOfferModelFromJson(Map<String, dynamic> json) =>
    PurchaseOfferModel(
      balance: newBalanceFromJson(json['customer'] as Map<String, dynamic>),
      errorMessage: json['errorMessage'] as String?,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$PurchaseOfferModelToJson(PurchaseOfferModel instance) =>
    <String, dynamic>{
      'customer': instance.balance,
      'errorMessage': instance.errorMessage,
      'success': instance.success,
    };
