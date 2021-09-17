import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nu_and_morty/features/home/presentation/cubit/home_cubit.dart';
import 'package:nu_and_morty/features/home/presentation/widgets/app_bar.dart';
import 'package:nu_and_morty/features/home/presentation/widgets/offer_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeDataLoaded) {
            final costumerOffers = state.costumerOffers;
            return CustomScrollView(
              slivers: [
                NuAppBar(
                  name: costumerOffers.name,
                  balance: costumerOffers.balance,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final offer = costumerOffers.offers[index];
                      return OfferTile(offer: offer);
                    },
                    childCount: costumerOffers.offers.length,
                  ),
                ),
              ],
            );
          } else if (state is HomeError) {
            return Scaffold(
              body: Center(
                child: Text(state.failure.errorMessage),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
