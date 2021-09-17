import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart';
import 'package:nu_and_morty/features/home/domain/use_case/get_costumer_offers_use_case.dart';
import 'package:nu_and_morty/features/purchase/domain/use_case/purchase_offer_use_case.dart';

@GenerateMocks([
  GraphQLClient,
  NuMarketplaceRemoteDataSource,
  NuMarketplaceRepository,
  GetCostumerOffersUseCase,
  PurchaseOfferUseCase,
])
void main() {}
