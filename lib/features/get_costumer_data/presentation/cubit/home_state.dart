part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

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
