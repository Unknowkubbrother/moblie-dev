class Product {
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.star,
    required this.imageUrl,
  });

  final int id;
  final String title;
  final String description;
  final int price;
  final double star;
  final String imageUrl;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      star: (json['star'] as num?)?.toDouble() ?? 0,
      imageUrl: json['imageUrl'] as String? ?? '',
    );
  }
}
