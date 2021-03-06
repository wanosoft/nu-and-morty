import 'package:equatable/equatable.dart';

class CostumerOffers extends Equatable {
  final String name;
  final int balance;
  final List<Offer> offers;

  const CostumerOffers({
    required this.name,
    required this.balance,
    required this.offers,
  });

  CostumerOffers updateBalance(int balance) => CostumerOffers(
        name: name,
        balance: balance,
        offers: offers,
      );

  @override
  List<Object> get props => [name, balance, offers];
}

class Offer extends Equatable {
  final String id;
  final int price;
  final Product product;

  const Offer({
    required this.id,
    required this.price,
    required this.product,
  });

  @override
  List<Object> get props => [id, price, product];
}

class Product extends Equatable {
  final String name;
  final String description;
  final String imageUrl;

  const Product({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  List<Object> get props => [name, description, imageUrl];
}
