// ListView

import 'package:flutter/material.dart';
import 'models/product.dart';
import 'services/http_service.dart';
import 'detail_page.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({super.key});

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  final HttpService httpService = HttpService();

  final String productsUrl = 'https://itpart.net/mobile/api/products.php';
  final String baseImgUrl = 'https://itpart.net/mobile/images/'; // base Image

  @override
  Widget build(BuildContext context) {
    // debugPrint("myapp: $baseUrl & $baseImgUrl");
    return Center(
      child: FutureBuilder(
        future: httpService.fetchData(strUrl: productsUrl),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            List<Product>? products = snapshot.data;
            return ListView.separated(
              itemCount: products!.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailPage(productId: products[index].id),
                    ),
                  );
                },
                leading: Image.network(
                  '$baseImgUrl/${products[index].imageUrl}',
                  width: 86,
                ),
                title: Text(
                  products[index].title,
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(products[index].description),
              ),
              separatorBuilder: (context, int index) => const Divider(),
            );
          } else {
            return const Text('No data found.');
          }
        },
      ),
    );
  }
}
