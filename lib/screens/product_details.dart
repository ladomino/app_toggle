import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go back to Product List'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}