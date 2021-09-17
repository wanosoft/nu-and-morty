// Mocks generated by Mockito 5.0.16 from annotations
// in nu_and_morty/test/test_util/mock_factory.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;

import 'package:graphql/src/cache/cache.dart' as _i3;
import 'package:graphql/src/core/core.dart' as _i2;
import 'package:graphql_flutter/graphql_flutter.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:nu_and_morty/core/data/remote/nu_marketplace_remote_data_source.dart'
    as _i9;
import 'package:nu_and_morty/core/domain/repositories/nu_marketplace_repository.dart'
    as _i10;
import 'package:nu_and_morty/core/domain/result.dart' as _i6;
import 'package:nu_and_morty/core/domain/use_case.dart' as _i14;
import 'package:nu_and_morty/features/home/data/models/costumer_offers_model.dart'
    as _i4;
import 'package:nu_and_morty/features/home/domain/entities/costumer_offers_entity.dart'
    as _i11;
import 'package:nu_and_morty/features/home/domain/use_case/get_costumer_offers_use_case.dart'
    as _i13;
import 'package:nu_and_morty/features/purchase/data/models/purchase_offer_model.dart'
    as _i5;
import 'package:nu_and_morty/features/purchase/domain/entities/purchase_offer_entity.dart'
    as _i12;
import 'package:nu_and_morty/features/purchase/domain/use_case/purchase_offer_use_case.dart'
    as _i15;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeDefaultPolicies_0 extends _i1.Fake implements _i2.DefaultPolicies {}

class _FakeLink_1 extends _i1.Fake implements _i2.Link {}

class _FakeGraphQLCache_2 extends _i1.Fake implements _i3.GraphQLCache {}

class _FakeQueryManager_3 extends _i1.Fake implements _i2.QueryManager {}

class _FakeObservableQuery_4 extends _i1.Fake implements _i2.ObservableQuery {}

class _FakeQueryResult_5 extends _i1.Fake implements _i2.QueryResult {}

class _FakeCostumerOffersModel_6 extends _i1.Fake
    implements _i4.CostumerOffersModel {}

class _FakePurchaseOfferModel_7 extends _i1.Fake
    implements _i5.PurchaseOfferModel {}

class _FakeResult_8<T> extends _i1.Fake implements _i6.Result<T> {}

/// A class which mocks [GraphQLClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockGraphQLClient extends _i1.Mock implements _i7.GraphQLClient {
  MockGraphQLClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.DefaultPolicies get defaultPolicies =>
      (super.noSuchMethod(Invocation.getter(#defaultPolicies),
          returnValue: _FakeDefaultPolicies_0()) as _i2.DefaultPolicies);
  @override
  set defaultPolicies(_i2.DefaultPolicies? _defaultPolicies) =>
      super.noSuchMethod(Invocation.setter(#defaultPolicies, _defaultPolicies),
          returnValueForMissingStub: null);
  @override
  _i2.Link get link =>
      (super.noSuchMethod(Invocation.getter(#link), returnValue: _FakeLink_1())
          as _i2.Link);
  @override
  _i3.GraphQLCache get cache => (super.noSuchMethod(Invocation.getter(#cache),
      returnValue: _FakeGraphQLCache_2()) as _i3.GraphQLCache);
  @override
  _i2.QueryManager get queryManager =>
      (super.noSuchMethod(Invocation.getter(#queryManager),
          returnValue: _FakeQueryManager_3()) as _i2.QueryManager);
  @override
  set queryManager(_i2.QueryManager? _queryManager) =>
      super.noSuchMethod(Invocation.setter(#queryManager, _queryManager),
          returnValueForMissingStub: null);
  @override
  _i2.ObservableQuery watchQuery(_i2.WatchQueryOptions? options) =>
      (super.noSuchMethod(Invocation.method(#watchQuery, [options]),
          returnValue: _FakeObservableQuery_4()) as _i2.ObservableQuery);
  @override
  _i2.ObservableQuery watchMutation(_i2.WatchQueryOptions? options) =>
      (super.noSuchMethod(Invocation.method(#watchMutation, [options]),
          returnValue: _FakeObservableQuery_4()) as _i2.ObservableQuery);
  @override
  _i8.Future<_i2.QueryResult> query(_i2.QueryOptions? options) =>
      (super.noSuchMethod(Invocation.method(#query, [options]),
              returnValue: Future<_i2.QueryResult>.value(_FakeQueryResult_5()))
          as _i8.Future<_i2.QueryResult>);
  @override
  _i8.Future<_i2.QueryResult> mutate(_i2.MutationOptions? options) =>
      (super.noSuchMethod(Invocation.method(#mutate, [options]),
              returnValue: Future<_i2.QueryResult>.value(_FakeQueryResult_5()))
          as _i8.Future<_i2.QueryResult>);
  @override
  _i8.Stream<_i2.QueryResult> subscribe(_i2.SubscriptionOptions? options) =>
      (super.noSuchMethod(Invocation.method(#subscribe, [options]),
              returnValue: Stream<_i2.QueryResult>.empty())
          as _i8.Stream<_i2.QueryResult>);
  @override
  _i8.Future<_i2.QueryResult> fetchMore(_i2.FetchMoreOptions? fetchMoreOptions,
          {_i2.QueryOptions? originalOptions,
          _i2.QueryResult? previousResult}) =>
      (super.noSuchMethod(
              Invocation.method(#fetchMore, [
                fetchMoreOptions
              ], {
                #originalOptions: originalOptions,
                #previousResult: previousResult
              }),
              returnValue: Future<_i2.QueryResult>.value(_FakeQueryResult_5()))
          as _i8.Future<_i2.QueryResult>);
  @override
  Map<String, dynamic>? readQuery(_i2.Request? request,
          {bool? optimistic = true}) =>
      (super.noSuchMethod(Invocation.method(
              #readQuery, [request], {#optimistic: optimistic}))
          as Map<String, dynamic>?);
  @override
  Map<String, dynamic>? readFragment(_i3.FragmentRequest? fragmentRequest,
          {bool? optimistic = true}) =>
      (super.noSuchMethod(Invocation.method(
              #readFragment, [fragmentRequest], {#optimistic: optimistic}))
          as Map<String, dynamic>?);
  @override
  void writeQuery(_i2.Request? request,
          {Map<String, dynamic>? data, bool? broadcast = true}) =>
      super.noSuchMethod(
          Invocation.method(
              #writeQuery, [request], {#data: data, #broadcast: broadcast}),
          returnValueForMissingStub: null);
  @override
  void writeFragment(_i3.FragmentRequest? fragmentRequest,
          {bool? broadcast = true, Map<String, dynamic>? data}) =>
      super.noSuchMethod(
          Invocation.method(#writeFragment, [fragmentRequest],
              {#broadcast: broadcast, #data: data}),
          returnValueForMissingStub: null);
  @override
  _i8.Future<List<_i2.QueryResult?>>? resetStore(
          {bool? refetchQueries = true}) =>
      (super.noSuchMethod(Invocation.method(
              #resetStore, [], {#refetchQueries: refetchQueries}))
          as _i8.Future<List<_i2.QueryResult?>>?);
  @override
  String toString() => super.toString();
}

/// A class which mocks [NuMarketplaceRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockNuMarketplaceRemoteDataSource extends _i1.Mock
    implements _i9.NuMarketplaceRemoteDataSource {
  MockNuMarketplaceRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i4.CostumerOffersModel> getCostumerOffers() =>
      (super.noSuchMethod(Invocation.method(#getCostumerOffers, []),
              returnValue: Future<_i4.CostumerOffersModel>.value(
                  _FakeCostumerOffersModel_6()))
          as _i8.Future<_i4.CostumerOffersModel>);
  @override
  _i8.Future<_i5.PurchaseOfferModel> purchaseOffer(String? offerId) =>
      (super.noSuchMethod(Invocation.method(#purchaseOffer, [offerId]),
              returnValue: Future<_i5.PurchaseOfferModel>.value(
                  _FakePurchaseOfferModel_7()))
          as _i8.Future<_i5.PurchaseOfferModel>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [NuMarketplaceRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockNuMarketplaceRepository extends _i1.Mock
    implements _i10.NuMarketplaceRepository {
  MockNuMarketplaceRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.Result<_i11.CostumerOffersEntity>> getCostumerOffers() =>
      (super.noSuchMethod(Invocation.method(#getCostumerOffers, []),
              returnValue: Future<_i6.Result<_i11.CostumerOffersEntity>>.value(
                  _FakeResult_8<_i11.CostumerOffersEntity>()))
          as _i8.Future<_i6.Result<_i11.CostumerOffersEntity>>);
  @override
  _i8.Future<_i6.Result<_i12.PurchaseOfferEntity>> purchaseOffer(String? id) =>
      (super.noSuchMethod(Invocation.method(#purchaseOffer, [id]),
              returnValue: Future<_i6.Result<_i12.PurchaseOfferEntity>>.value(
                  _FakeResult_8<_i12.PurchaseOfferEntity>()))
          as _i8.Future<_i6.Result<_i12.PurchaseOfferEntity>>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [GetCostumerOffersUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCostumerOffersUseCase extends _i1.Mock
    implements _i13.GetCostumerOffersUseCase {
  MockGetCostumerOffersUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.Result<_i11.CostumerOffersEntity>> call(_i14.NoParams? _) =>
      (super.noSuchMethod(Invocation.method(#call, [_]),
              returnValue: Future<_i6.Result<_i11.CostumerOffersEntity>>.value(
                  _FakeResult_8<_i11.CostumerOffersEntity>()))
          as _i8.Future<_i6.Result<_i11.CostumerOffersEntity>>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [PurchaseOfferUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockPurchaseOfferUseCase extends _i1.Mock
    implements _i15.PurchaseOfferUseCase {
  MockPurchaseOfferUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.Result<_i12.PurchaseOfferEntity>> call(String? id) =>
      (super.noSuchMethod(Invocation.method(#call, [id]),
              returnValue: Future<_i6.Result<_i12.PurchaseOfferEntity>>.value(
                  _FakeResult_8<_i12.PurchaseOfferEntity>()))
          as _i8.Future<_i6.Result<_i12.PurchaseOfferEntity>>);
  @override
  String toString() => super.toString();
}
