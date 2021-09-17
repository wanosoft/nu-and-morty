import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nu_and_morty/core/injection/injector.dart';
import 'package:nu_and_morty/core/presentation/theme.dart';
import 'package:nu_and_morty/features/home/presentation/cubit/home_cubit.dart';
import 'package:nu_and_morty/features/home/presentation/pages/home_page.dart';

class NuContaMarketplace extends StatelessWidget {
  const NuContaMarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NuConta Marketplace',
      theme: NuContaMarketplaceTheme.themeData,
      home: BlocProvider<HomeCubit>(
        create: (_) => getIt()..getCostumerAndOffers(),
        child: const HomePage(),
      ),
    );
  }
}
