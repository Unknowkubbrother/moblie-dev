import 'package:flutter/material.dart';
import 'catalog_products.dart';
import 'models/products.dart';
import 'item_product.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Product> products = CatalogProducts.products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].title),
            subtitle: Text(products[index].desc),
            trailing: Text(products[index].price.toString()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyItemProduct(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
