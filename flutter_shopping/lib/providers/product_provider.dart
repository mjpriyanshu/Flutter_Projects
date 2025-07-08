import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  // Default products
  final List<Product> _defaultProducts = [
    Product(
      id: 1,
      name: 'iPhone 15 Pro',
      price: 999.99,
      image: '📱',
      description: 'Latest iPhone with amazing features',
    ),
    Product(
      id: 2,
      name: 'MacBook Air',
      price: 1299.99,
      image: '💻',
      description: 'Powerful laptop for professionals',
    ),
    Product(
      id: 3,
      name: 'AirPods Pro',
      price: 249.99,
      image: '🎧',
      description: 'Wireless earbuds with noise cancellation',
    ),
    Product(
      id: 4,
      name: 'iPad Pro',
      price: 799.99,
      image: '📱',
      description: 'Professional tablet for creative work',
    ),
    Product(
      id: 5,
      name: 'Apple Watch',
      price: 399.99,
      image: '⌚',
      description: 'Smart watch with health monitoring',
    ),
    Product(
      id: 6,
      name: 'Samsung Galaxy S24',
      price: 899.99,
      image: '📱',
      description: 'Latest Android flagship phone',
    ),
  ];

  // Admin-added products
  final List<Product> _adminProducts = [];
  int _nextId = 7; // Start from 7 since we have 6 default products

  List<Product> get allProducts => [..._defaultProducts, ..._adminProducts];
  List<Product> get adminProducts => _adminProducts;

  void addProduct(Product product) {
    final newProduct = Product(
      id: _nextId++,
      name: product.name,
      price: product.price,
      image: product.image,
      description: product.description,
    );
    _adminProducts.add(newProduct);
    notifyListeners();
  }

  void removeProduct(int productId) {
    _adminProducts.removeWhere((product) => product.id == productId);
    notifyListeners();
  }

  Product? getProductById(int id) {
    try {
      return allProducts.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }
}
