import 'package:equatable/equatable.dart';
import 'package:nu_and_morty/features/home/presentation/models/costumer_offers.dart';

class PurchaseOffer extends Equatable {
  final CostumerOffers costumerOffers;
  final String? errorMessage;
  final bool success;

  const PurchaseOffer({
    required this.costumerOffers,
    required this.errorMessage,
    required this.success,
  });

  @override
  List<Object?> get props => [costumerOffers, errorMessage, success];
}
