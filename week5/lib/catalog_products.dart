import 'models/products.dart';

class CatalogProducts {
  static final List<Product> products = [
    Product(
      id: '1',
      title: 'Product 1',
      desc: 'Description 1',
      price: 100,
      star: 4.5,
      imageUrl:
          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
    ),
    Product(
      id: '2',
      title: 'Product 2',
      desc: 'Description 2',
      price: 200,
      star: 4.0,
      imageUrl:
          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
    ),
    Product(
      id: '3',
      title: 'Product 3',
      desc: 'Description 3',
      price: 300,
      star: 3.5,
      imageUrl:
          'https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg',
    ),
  ];
}
