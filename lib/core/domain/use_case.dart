import 'package:nu_and_morty/core/domain/result.dart';

abstract class UseCaseAsync<T, Params> {
  Future<Result<T>> call(Params params);
}

class NoData {}

class NoParams {}
