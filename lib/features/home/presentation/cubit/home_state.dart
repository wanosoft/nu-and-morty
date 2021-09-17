part of 'home_cubit.dart';

// TODO: use freezed to generate factory for each state.
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeDataLoaded extends HomeState {
  const HomeDataLoaded(this.getCostumerAndOffers);

  final GetCostumerAndOffers getCostumerAndOffers;

  @override
  List<Object> get props => [getCostumerAndOffers];
}

class HomeError extends HomeState {
  const HomeError(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
