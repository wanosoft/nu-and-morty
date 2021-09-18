import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/get_costumer_data/domain/entities/costumer_offers_entity.dart';

@lazySingleton
class GetCostumerOffersUseCase
    implements UseCaseAsync<CostumerOffersEntity, NoParams> {
  const GetCostumerOffersUseCase(this._repository);

  final NuMarketplaceRepository _repository;

  @override
  Future<Result<CostumerOffersEntity>> call(NoParams _) async =>
      await _repository.getCostumerOffers();
}
