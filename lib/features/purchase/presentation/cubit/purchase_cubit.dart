import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nu_and_morty/core/domain/failure.dart';
import 'package:nu_and_morty/features/purchase/domain/use_case/purchase_offer_use_case.dart';
import 'package:nu_and_morty/features/purchase/presentation/mapper.dart';
import 'package:nu_and_morty/features/purchase/presentation/models/purchase_offer.dart';

part 'purchase_state.dart';

class PurchaseCubit extends Cubit<PurchaseState> {
  PurchaseCubit(this._useCase) : super(PurchaseInitial());

  final PurchaseOfferUseCase _useCase;

  Future<void> onPurchaseOffer(String offerId) async {
    emit(PurchaseLoading());
    final result = await _useCase(offerId);
    if (result.isSuccess) {
      final model = purchaseOfferMapper(result.asSuccess.value);
      emit(PurchaseSuccess(model));
    } else {
      final failure = result.asFailure.failure;
      emit(PurchaseError(failure));
    }
  }
}
