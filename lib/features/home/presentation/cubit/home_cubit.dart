import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/core/domain/use_case.dart';
import 'package:nu_and_morty/features/home/domain/use_case/get_costumer_offers_use_case.dart';
import 'package:nu_and_morty/features/home/presentation/mapper.dart';
import 'package:nu_and_morty/features/home/presentation/models/costumer_offers.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._useCase) : super(HomeInitial());

  final GetCostumerOffersUseCase _useCase;

  Future<void> getCostumerAndOffers() async {
    emit(HomeLoading());
    final result = await _useCase(NoParams());
    if (result.isSuccess) {
      final model = costumerOffersMapper(result.asSuccess.value);
      emit(HomeDataLoaded(model));
    } else {
      final failure = result.asFailure.failure;
      emit(HomeError(failure));
    }
  }

  void updateData(CostumerOffers updatedData) =>
      emit(HomeDataLoaded(updatedData));
}
