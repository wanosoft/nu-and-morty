import 'package:equatable/equatable.dart';

class PurchaseOfferEntity extends Equatable {
  final int balance;
  final String? errorMessage;
  final bool success;

  const PurchaseOfferEntity({
    required this.balance,
    required this.errorMessage,
    required this.success,
  });

  @override
  List<Object?> get props => [balance, errorMessage, success];
}
