import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/result.dart';

void testDataSourceServerException({
  String testName = 'should throw server exception',
  required Function stub,
  required Function call,
  Function? verify,
}) =>
    test(testName, () async {
      when(stub()).thenThrow(const ServerException());

      expect(call(), throwsA(isA<ServerException>()));

      if (verify != null) {
        verify();
      }
    });

void testRepositoryServerFailure({
  String testName = 'should return server failure',
  required Function stub,
  required Function call,
  Function? verify,
}) =>
    test(testName, () async {
      when(stub()).thenThrow(const ServerException());

      final result = await call();

      expect(
        result,
        isA<FailureResult>().having(
          (result) => result.failure,
          'failure',
          isA<ServerFailure>(),
        ),
      );

      if (verify != null) {
        verify();
      }
    });

void testRepositoryUnknownFailure({
  String testName = 'should return unknown failure',
  required Function stub,
  required Function call,
  Function? verify,
}) =>
    test(testName, () async {
      when(stub()).thenThrow(Exception());

      final result = await call();

      expect(
        result,
        isA<FailureResult>().having(
          (result) => result.failure,
          'failure',
          isA<UnknownFailure>(),
        ),
      );

      if (verify != null) {
        verify();
      }
    });
