import 'package:flutter/material.dart';
import 'package:nu_and_morty/core/presentation/internationalization.dart';

class NuAppBar extends StatelessWidget {
  const NuAppBar({
    required this.name,
    required this.balance,
    Key? key,
  }) : super(key: key);

  final String name;
  final int balance;

  @override
  Widget build(BuildContext context) => SliverAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        collapsedHeight: 100.0,
        toolbarHeight: 100.0,
        title: Column(
          children: [
            Text(
              Internationalization.hello(name),
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              // TODO: Format money
              '\$$balance',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      );
}
