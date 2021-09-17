import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/domain/repository/nu_marketplace_repository.dart';
import 'package:nu_and_morty/core/domain/result.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/home/domain/entities/get_costumer_and_offers_entity.dart';

@lazySingleton
class GetCostumerAndOffersUseCase
    implements UseCaseAsync<GetCostumerAndOffersEntity, NoParams> {
  const GetCostumerAndOffersUseCase(this._repository);

  final NuMarketplaceRepository _repository;

  @override
  Future<Result<GetCostumerAndOffersEntity>> call(NoParams _) =>
      _repository.getCostumerAndOffers();
}
