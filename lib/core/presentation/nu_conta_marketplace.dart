import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nu_and_morty/core/injection/injector.dart';
import 'package:nu_and_morty/core/presentation/theme.dart';
import 'package:nu_and_morty/features/get_costumer_data/presentation/cubit/home_cubit.dart';
import 'package:nu_and_morty/features/get_costumer_data/presentation/pages/home_page.dart';

class NuContaMarketplace extends StatelessWidget {
  const NuContaMarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => getIt()..getCostumerAndOffers(),
      child: MaterialApp(
        title: 'NuConta Marketplace',
        theme: NuContaMarketplaceTheme.themeData,
        home: const HomePage(),
      ),
    );
  }
}
