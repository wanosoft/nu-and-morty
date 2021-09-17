part of 'purchase_cubit.dart';

abstract class PurchaseState extends Equatable {
  const PurchaseState();

  @override
  List<Object> get props => [];
}

class PurchaseInitial extends PurchaseState {}

class PurchaseLoading extends PurchaseState {}

class PurchaseSuccess extends PurchaseState {
  const PurchaseSuccess(this.purchaseOffer);

  final PurchaseOffer purchaseOffer;

  @override
  List<Object> get props => [purchaseOffer];
}

class PurchaseError extends PurchaseState {
  const PurchaseError(this.failure);

  final Failure failure;

  @override
  List<Object> get props => [failure];
}
