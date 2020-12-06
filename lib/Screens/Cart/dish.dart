import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final double price;

  Product({@required this.id, @required this.name, @required this.price});
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      name: 'Fruit Smoothie',
      price: 199,
    ),
    Product(
      id: '2',
      name: 'Butter Chicken',
      price: 299,
    ),
    Product(
      id: '3',
      name: 'Grilled Fish',
      price: 399,
    ),
    Product(
      id: '4',
      name: 'Eggs On Toast',
      price: 149,
    ),
    Product(
      id: '5',
      name: 'Veggie Nourish Bowl',
      price: 299,
    ),
    Product(
      id: '6',
      name: 'Spaghetti',
      price: 399,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}
