import 'package:app_toggle/screens/product_details.dart';
import 'package:app_toggle/screens/product_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Filter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: ProductListScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/details': (context) => ProductDetailsScreen(),
      },
    );
  }
}
