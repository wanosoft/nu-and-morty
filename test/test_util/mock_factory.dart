import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart';
import 'package:nu_and_morty/core/domain/repository/nu_marketplace_repository.dart';

@GenerateMocks([
  GraphQLClient,
  NuMarketplaceRemoteDataSource,
  NuMarketplaceRepository,
])
void main() {}
