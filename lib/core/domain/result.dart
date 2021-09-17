import 'package:equatable/equatable.dart';
import 'package:nu_and_morty/core/domain/failure.dart';

abstract class Result<T> {
  bool get isSuccess;

  bool get isFailure;

  SuccessResult<T> get asSuccess;

  FailureResult get asFailure;

  factory Result.success(T value) = SuccessResult;

  factory Result.failure(Failure failure) = FailureResult;
}

class SuccessResult<T> with EquatableMixin implements Result<T> {
  final T value;

  @override
  List<Object?> get props => [value];

  @override
  bool get isSuccess => true;

  @override
  bool get isFailure => false;

  @override
  SuccessResult<T> get asSuccess => this;

  @override
  FailureResult get asFailure =>
      throw UnimplementedError('A SuccessResult is not a failure.');

  SuccessResult(this.value);

  @override
  String toString() => 'SuccessResult{value: $value}';
}

class FailureResult<T> with EquatableMixin implements Result<T> {
  final Failure failure;

  @override
  List<Object?> get props => [failure];

  @override
  bool get isSuccess => false;

  @override
  bool get isFailure => true;

  @override
  SuccessResult<T> get asSuccess =>
      throw UnimplementedError('A FailureResult is not a success.');

  @override
  FailureResult get asFailure => this;

  FailureResult(this.failure);

  @override
  String toString() => 'FailureResult{failure: $failure}';
}
