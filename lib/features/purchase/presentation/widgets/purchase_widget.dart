import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nu_and_morty/core/injection/injector.dart';
import 'package:nu_and_morty/core/presentation/internationalization.dart';
import 'package:nu_and_morty/features/home/presentation/cubit/home_cubit.dart';
import 'package:nu_and_morty/features/purchase/domain/use_case/purchase_offer_use_case.dart';
import 'package:nu_and_morty/features/purchase/presentation/cubit/purchase_cubit.dart';

class PurchaseWidget extends StatelessWidget {
  const PurchaseWidget({required this.offerId, Key? key}) : super(key: key);

  final String offerId;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => PurchaseCubit(getIt.get<PurchaseOfferUseCase>()),
        child: BlocConsumer<PurchaseCubit, PurchaseState>(
          listener: (_, state) {
            if (state is PurchaseSuccess) {
              context.read<HomeCubit>().updateBalance(
                    state.purchaseOffer.balance,
                  );
            }
          },
          builder: (context, state) => Column(
            children: [
              PurchaseButton(
                backgroudColor: state.buttonColor,
                title: state.buttonTitle(context),
                onPressed: state.enableButton
                    ? () =>
                        context.read<PurchaseCubit>().onPurchaseOffer(offerId)
                    : null,
              ),
              const SizedBox(height: 30),
              Text(
                state.descriptionText,
                style: Theme.of(context).primaryTextTheme.bodyText1,
              ),
            ],
          ),
        ),
      );
}

class PurchaseButton extends StatelessWidget {
  const PurchaseButton({
    required this.backgroudColor,
    required this.title,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Color backgroudColor;
  final Widget title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: title,
      color: backgroudColor,
      onPressed: onPressed,
    );
  }
}

extension UiConverter on PurchaseState {
  Color get buttonColor {
    if (this is PurchaseLoading) {
      return Colors.blue;
    }
    if (this is PurchaseSuccess) {
      return Colors.green;
    }
    return Colors.deepPurple;
  }

  Widget buttonTitle(BuildContext context) {
    if (this is PurchaseLoading) {
      return const CircularProgressIndicator();
    }
    late String message;
    if (this is PurchaseError) {
      message = Internationalization.tryAgain;
    } else if (this is PurchaseSuccess) {
      message = Internationalization.purchaseAgain;
    } else {
      message = Internationalization.purchase;
    }
    return Text(
      message,
      style: Theme.of(context).textTheme.button,
    );
  }

  bool get enableButton {
    if (this is PurchaseLoading) {
      return false;
    }
    return true;
  }

  String get descriptionText {
    if (this is PurchaseSuccess) {
      return Internationalization.successDescription;
    }
    if (this is PurchaseError) {
      final state = this as PurchaseError;
      return state.failure.errorMessage;
    }
    return '';
  }
}
