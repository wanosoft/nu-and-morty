import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart';

part 'purchase_offer_model.g.dart';

@JsonSerializable()
class PurchaseOfferModel extends Equatable {
  @JsonKey(name: 'customer')
  final CostumerOffersModel costumerOffers;

  final String? errorMessage;

  final bool success;

  const PurchaseOfferModel({
    required this.costumerOffers,
    required this.errorMessage,
    required this.success,
  });

  factory PurchaseOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseOfferModelToJson(this);

  @override
  List<Object?> get props => [costumerOffers, errorMessage, success];
}
