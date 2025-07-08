import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../models/cart_item.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;
  String _username = '';

  // Dummy credentials for demonstration
  final Map<String, String> _users = {
    'admin': 'password123',
    'user': 'user123',
    'test': 'test123',
  };

  // User roles
  final Map<String, String> _userRoles = {
    'admin': 'admin',
    'user': 'customer',
    'test': 'customer',
  };

  // Store user purchase history
  final Map<String, List<Map<String, dynamic>>> _userOrders = {
    'admin': [],
    'user': [],
    'test': [],
  };

  // Store admin's added products
  final Map<String, List<Product>> _adminProducts = {'admin': []};

  bool get isLoggedIn => _isLoggedIn;
  String get username => _username;
  bool get isAdmin => _userRoles[_username] == 'admin';

  List<Map<String, dynamic>> get userOrders => _userOrders[_username] ?? [];
  List<Product> get adminProducts => _adminProducts[_username] ?? [];

  bool login(String username, String password) {
    if (_users.containsKey(username) && _users[username] == password) {
      _isLoggedIn = true;
      _username = username;
      notifyListeners();
      return true;
    }
    return false;
  }

  void logout() {
    _isLoggedIn = false;
    _username = '';
    notifyListeners();
  }

  void addOrder(List<CartItem> items, double totalAmount) {
    if (!_isLoggedIn) return;

    final order = {
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
      'date': DateTime.now(),
      'items': items
          .map(
            (item) => {
              'name': item.name,
              'price': item.price,
              'quantity': item.quantity,
              'totalPrice': item.totalPrice,
              'image': item.image,
            },
          )
          .toList(),
      'totalAmount': totalAmount,
    };

    _userOrders[_username]?.add(order);
    notifyListeners();
  }

  void addProduct(Product product) {
    if (!_isLoggedIn || !isAdmin) return;

    _adminProducts[_username]?.add(product);
    notifyListeners();
  }
}
