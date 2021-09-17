import 'package:nu_and_morty/features/home/domain/mapper.dart';
import 'package:nu_and_morty/features/purchase/data/models/purchase_offer_model.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';

PurchaseOfferEntity purchaseOfferEntityMapper(PurchaseOfferModel model) =>
    PurchaseOfferEntity(
      costumerOffers: costumerOffersEntityMapper(model.costumerOffers),
      errorMessage: model.errorMessage,
      success: model.success,
    );
