import 'package:scoped_model/scoped_model.dart';

import './connected_product.dart';

import '../models/user.dart';

mixin UserModel on ConnectedProducts {
  
  void login(String email, String password) {
    authenticatedUser = User(id: 'asdasd', email: email, password: password);
  }
}
