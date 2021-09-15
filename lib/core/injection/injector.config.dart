// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote/nu_marketplace_remote_data_source.dart' as _i4;
import '../data/repository/nu_marketplace_data_repository.dart' as _i6;
import '../domain/repository/nu_marketplace_repository.dart' as _i5;
import 'register_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.GraphQLClient>(() => registerModule.gqlClient);
  gh.lazySingleton<_i4.NuMarketplaceRemoteDataSource>(
      () => _i4.NuMarketplaceRemoteDataSoucerImpl(get<_i3.GraphQLClient>()));
  gh.lazySingleton<_i5.NuMarketplaceRepository>(() =>
      _i6.NuMarketplaceDataRepository(
          get<_i4.NuMarketplaceRemoteDataSource>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
