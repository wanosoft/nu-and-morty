import 'package:equatable/equatable.dart';
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart';

class PurchaseOfferEntity extends Equatable {
  final CostumerOffersEntity costumerOffers;
  final String? errorMessage;
  final bool success;

  const PurchaseOfferEntity({
    required this.costumerOffers,
    required this.errorMessage,
    required this.success,
  });

  @override
  List<Object?> get props => [costumerOffers, errorMessage, success];
}
