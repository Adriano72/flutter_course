import 'package:scoped_model/scoped_model.dart';

import '../models/product.dart';
import '../models/user.dart';

class ConnectedProducts extends Model {
  List<Product> _products = [];
  User _authenticatedUser;

  void addProduct(String title, String description, String image, double price) {
    fina Product newProduct = Product(title: title, description: description, image: image, price: price)
    _products.add(product);
    _selectedProductIndex = null;
    notifyListeners();
  }
}