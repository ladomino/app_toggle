import 'package:app_toggle/constants/dummy_products.dart';
import 'package:app_toggle/models/product.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => ProductListScreenState();
}

class ProductListScreenState extends State<ProductListScreen> {
  bool showOnlyAvailable = false;

  @override
  Widget build(BuildContext context) {
    List<Product> displayedProducts =
        showOnlyAvailable
            ? Products.allProducts.where((p) => p.isAvailable).toList()
            : Products.allProducts;

    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          Row(
            children: [
              Text(showOnlyAvailable ? 'Available Only' : 'All Products'),
              SizedBox(width: 10), // Space between switch and text
              Switch(
                value: showOnlyAvailable,
                onChanged: (val) {
                  setState(() {
                    showOnlyAvailable = val;
                  });
                },
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: displayedProducts.length,
        itemBuilder: (context, index) {
          final product = displayedProducts[index];
          return ListTile(
            title: Text(product.name),
            trailing:
                product.isAvailable
                    ? Icon(Icons.check_circle, color: Colors.green)
                    : Icon(Icons.cancel, color: Colors.red),
            onTap: () {
              Navigator.pushNamed(context, '/details');
            },
          );
        },
      ),
    );
  }
}
