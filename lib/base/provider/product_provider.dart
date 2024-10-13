import 'package:flutter/material.dart';
import 'package:ticket_app/base/services/fetch_products.dart';
import 'package:ticket_app/modal/product.dart';

class ProductProvider extends ChangeNotifier {
  final _services = FetchProducts();
  bool isLoading = false;
  List<ProductList> _products = [];
  List<ProductList> get products => _products;
  Future<void> getAllProducts() async {
    isLoading = true;
    notifyListeners();
    final response = await _services.getProducts();
    _products = response!;
    isLoading = false;
    notifyListeners();
  }
}
