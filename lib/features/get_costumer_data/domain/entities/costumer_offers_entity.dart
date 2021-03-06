import 'package:equatable/equatable.dart';

class CostumerOffersEntity extends Equatable {
  final String name;
  final int balance;
  final List<OfferEntity> offers;

  const CostumerOffersEntity({
    required this.name,
    required this.balance,
    required this.offers,
  });

  @override
  List<Object> get props => [name, balance, offers];
}

class OfferEntity extends Equatable {
  final String id;
  final int price;
  final ProductEntity product;

  const OfferEntity({
    required this.id,
    required this.price,
    required this.product,
  });

  @override
  List<Object> get props => [id, price, product];
}

class ProductEntity extends Equatable {
  final String name;
  final String description;
  final String imageUrl;

  const ProductEntity({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  List<Object> get props => [name, description, imageUrl];
}
