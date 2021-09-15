// Mocks generated by Mockito 5.0.16 from annotations
// in nu_and_morty/test/core/data/remote/nu_marketplace_remote_data_source_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:graphql/src/cache/cache.dart' as _i3;
import 'package:graphql/src/core/core.dart' as _i2;
import 'package:graphql/src/graphql_client.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

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

/// A class which mocks [GraphQLClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockGraphQLClient extends _i1.Mock implements _i4.GraphQLClient {
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
  _i5.Future<_i2.QueryResult> query(_i2.QueryOptions? options) =>
      (super.noSuchMethod(Invocation.method(#query, [options]),
              returnValue: Future<_i2.QueryResult>.value(_FakeQueryResult_5()))
          as _i5.Future<_i2.QueryResult>);
  @override
  _i5.Future<_i2.QueryResult> mutate(_i2.MutationOptions? options) =>
      (super.noSuchMethod(Invocation.method(#mutate, [options]),
              returnValue: Future<_i2.QueryResult>.value(_FakeQueryResult_5()))
          as _i5.Future<_i2.QueryResult>);
  @override
  _i5.Stream<_i2.QueryResult> subscribe(_i2.SubscriptionOptions? options) =>
      (super.noSuchMethod(Invocation.method(#subscribe, [options]),
              returnValue: Stream<_i2.QueryResult>.empty())
          as _i5.Stream<_i2.QueryResult>);
  @override
  _i5.Future<_i2.QueryResult> fetchMore(_i2.FetchMoreOptions? fetchMoreOptions,
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
          as _i5.Future<_i2.QueryResult>);
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
  _i5.Future<List<_i2.QueryResult?>>? resetStore(
          {bool? refetchQueries = true}) =>
      (super.noSuchMethod(Invocation.method(
              #resetStore, [], {#refetchQueries: refetchQueries}))
          as _i5.Future<List<_i2.QueryResult?>>?);
  @override
  String toString() => super.toString();
}
