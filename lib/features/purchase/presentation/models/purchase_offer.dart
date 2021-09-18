import 'package:equatable/equatable.dart';

class PurchaseOffer extends Equatable {
  final int balance;
  final String? errorMessage;
  final bool success;

  const PurchaseOffer({
    required this.balance,
    required this.errorMessage,
    required this.success,
  });

  @override
  List<Object?> get props => [balance, errorMessage, success];
}
