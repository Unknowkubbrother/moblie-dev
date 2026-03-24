import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  static const String _baseUrl = 'https://itpart.net/mobile/api';
  static const String _imageBaseUrl = 'https://itpart.net/mobile/images';

  /// Base URL for product images. Full URL = imageBaseUrl + '/' + product.imageUrl
  /// e.g. https://itpart.net/mobile/images/water_RO.png
  String get imageBaseUrl => _imageBaseUrl;

  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse('$_baseUrl/products.php'));
    if (response.statusCode != 200) {
      throw Exception('โหลดรายการสินค้าไม่สำเร็จ');
    }
    final list = jsonDecode(response.body) as List<dynamic>;
    return list.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<Product> getProductById(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/product$id.php'));
    if (response.statusCode != 200) {
      throw Exception('โหลดรายละเอียดสินค้าไม่สำเร็จ');
    }
    final map = jsonDecode(response.body) as Map<String, dynamic>;
    return Product.fromJson(map);
  }
}
