import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nu_and_morty/core/presentation/internationalization.dart';
import 'package:nu_and_morty/features/home/presentation/model/costumer_offers.dart';

class OfferDetailView extends StatelessWidget {
  const OfferDetailView({required this.offer, Key? key}) : super(key: key);

  final Offer offer;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(offer.product.name),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(imageUrl: offer.product.imageUrl),
              const SizedBox(height: 30.0),
              Text(
                '\$${offer.price}',
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.green),
              ),
              const SizedBox(height: 30.0),
              RichText(
                text: TextSpan(
                  text: Internationalization.description,
                  style: Theme.of(context).primaryTextTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  children: [
                    TextSpan(
                      text: offer.product.description,
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
