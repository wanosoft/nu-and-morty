// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/get_costumer_data/domain/use_case/get_costumer_offers_use_case.dart'
    as _i8;
import '../../features/get_costumer_data/presentation/cubit/home_cubit.dart'
    as _i9;
import '../../features/purchase/domain/use_case/purchase_offer_use_case.dart'
    as _i7;
import '../data/remote/nu_marketplace_remote_data_source.dart' as _i4;
import '../data/repositories/nu_marketplace_data_repository.dart' as _i6;
import '../domain/repositories/nu_marketplace_repository.dart' as _i5;
import 'register_module.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i4.NuMarketplaceRemoteDataSource>(
      () => _i4.NuMarketplaceRemoteDataSourceImpl(get<_i3.GraphQLClient>()));
  gh.lazySingleton<_i5.NuMarketplaceRepository>(() =>
      _i6.NuMarketplaceDataRepository(
          get<_i4.NuMarketplaceRemoteDataSource>()));
  gh.lazySingleton<_i7.PurchaseOfferUseCase>(
      () => _i7.PurchaseOfferUseCase(get<_i5.NuMarketplaceRepository>()));
  gh.lazySingleton<_i8.GetCostumerOffersUseCase>(
      () => _i8.GetCostumerOffersUseCase(get<_i5.NuMarketplaceRepository>()));
  gh.lazySingleton<_i9.HomeCubit>(
      () => _i9.HomeCubit(get<_i8.GetCostumerOffersUseCase>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
