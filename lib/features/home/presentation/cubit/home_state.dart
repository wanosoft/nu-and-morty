part of 'home_cubit.dart';

// TODO: use freezed to generate factory for each state.
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeDataLoaded extends HomeState {
  const HomeDataLoaded(this.costumerOffers);

  final CostumerOffers costumerOffers;

  @override
  List<Object> get props => [costumerOffers];
}

class HomeError extends HomeState {
  const HomeError(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
