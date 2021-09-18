import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';
import 'package:nu_and_morty/features/purchase/presentation/models/purchase_offer.dart';

PurchaseOffer purchaseOfferMapper(PurchaseOfferEntity entity) => PurchaseOffer(
      balance: entity.balance,
      errorMessage: entity.errorMessage,
      success: entity.success,
    );
