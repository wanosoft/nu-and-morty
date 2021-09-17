import 'package:nu_and_morty/features/home/presentation/mapper.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';
import 'package:nu_and_morty/features/purchase/presentation/models/purchase_offer.dart';

PurchaseOffer purchaseOfferMapper(PurchaseOfferEntity entity) => PurchaseOffer(
      costumerOffers: costumerOffersMapper(entity.costumerOffers),
      errorMessage: entity.errorMessage,
      success: entity.success,
    );
