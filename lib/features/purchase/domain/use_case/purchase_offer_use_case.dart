import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart';

@lazySingleton
class PurchaseOfferUseCase
    implements UseCaseAsync<PurchaseOfferEntity, String> {
  const PurchaseOfferUseCase(this._repository);

  final NuMarketplaceRepository _repository;

  @override
  Future<Result<PurchaseOfferEntity>> call(String id) async =>
      await _repository.purchaseOffer(id);
}
