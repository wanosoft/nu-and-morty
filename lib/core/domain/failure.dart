import 'package:equatable/equatable.dart';
import 'package:nu_and_morty/core/presentation/internationalization.dart';

abstract class Failure extends Equatable {
  String get errorMessage;
}

class ServerFailure extends Failure {
  @override
  String get errorMessage => Internationalization.serverErrorMessage;

  @override
  List<Object> get props => [errorMessage];
}

class UnknownFailure extends Failure {
  @override
  String get errorMessage => Internationalization.unknownErrorMessage;

  @override
  List<Object> get props => [errorMessage];
}

class NuMarketplaceFailure extends Failure {
  final String _message;

  NuMarketplaceFailure(this._message);

  @override
  String get errorMessage => _message;

  @override
  List<Object> get props => [_message];
}
