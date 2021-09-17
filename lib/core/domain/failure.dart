import 'package:nu_and_morty/core/presentation/internationalization.dart';

abstract class Failure {
  String get errorMessage;
}

class ServerFailure extends Failure {
  @override
  String get errorMessage => Internationalization.serverErrorMessage;
}

class UnknownFailure extends Failure {
  @override
  String get errorMessage => Internationalization.unknownErrorMessage;
}

class NuMarketplaceFailure extends Failure {
  final String _message;

  NuMarketplaceFailure(this._message);

  @override
  String get errorMessage => _message;
}
