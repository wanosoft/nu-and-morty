import 'package:nu_and_morty/core/presentation/localizations.dart';

abstract class Failure {
  String get errorMessage;
}

class ServerFailure extends Failure {
  @override
  String get errorMessage => Localizations.serverErrorMessage;
}

class UnknownFailure extends Failure {
  @override
  String get errorMessage => Localizations.unknownErrorMessage;
}
