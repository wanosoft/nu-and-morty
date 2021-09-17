import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nu_and_morty/features/home/presentation/cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeDataLoaded) {
          return Scaffold(
            body: ListView.builder(
              itemBuilder: (context, index) {
                final offer = state.costumerOffers.offers[index];
                return ListTile(
                  title: Text(offer.product.name),
                );
              },
              itemCount: state.costumerOffers.offers.length,
            ),
          );
        } else if (state is HomeError) {
          return Scaffold(
            body: Center(
              child: Text(state.failure.errorMessage),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: Text('Loading'),
            ),
          );
        }
      },
    );
  }
}
