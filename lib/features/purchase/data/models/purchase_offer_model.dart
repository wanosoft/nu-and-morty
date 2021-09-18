import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'purchase_offer_model.g.dart';

@JsonSerializable()
class PurchaseOfferModel extends Equatable {
  @JsonKey(name: 'customer', fromJson: newBalanceFromJson)
  final int balance;

  final String? errorMessage;

  final bool success;

  const PurchaseOfferModel({
    required this.balance,
    required this.errorMessage,
    required this.success,
  });

  factory PurchaseOfferModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOfferModelFromJson(json);

  Map<String, dynamic> toJson() => _$PurchaseOfferModelToJson(this);

  @override
  List<Object?> get props => [balance, errorMessage, success];
}

int newBalanceFromJson(Map<String, dynamic> json) => json['balance'];
