import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nu_and_morty/core/injection/injector.dart';
import 'package:nu_and_morty/core/presentation/nu_conta_marketplace.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const NuContaMarketplace());
}
