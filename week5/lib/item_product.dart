import 'package:flutter/material.dart';
import 'models/products.dart';

class MyItemProduct extends StatelessWidget {
  final Product product;

  const MyItemProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Product')),
      body: Center(
        child: Column(
          children: [
            Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image.network(product.imageUrl, height: 300, width: 300),
            SizedBox(height: 10),
            Text(product.desc, style: const TextStyle(fontSize: 16)),
            Text(
              product.price.toString(),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
