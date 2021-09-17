import 'package:flutter/material.dart';
import 'package:nu_and_morty/features/home/presentation/models/costumer_offers.dart';
import 'package:nu_and_morty/features/home/presentation/pages/offer_detail_view.dart';

class OfferTile extends StatelessWidget {
  const OfferTile({
    required this.offer,
    Key? key,
  }) : super(key: key);

  final Offer offer;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(offer.product.name),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => OfferDetailView(offer: offer),
          ),
        ),
      );
}
