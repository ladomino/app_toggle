import 'package:app_toggle/models/product.dart';

class Products {

  static  List<Product> allProducts = [
    Product(name: 'Apple', isAvailable: true),
    Product(name: 'Banana', isAvailable: false),
    Product(name: 'Carrot', isAvailable: true),
    Product(name: 'Donut', isAvailable: false),
  ];
  
}
