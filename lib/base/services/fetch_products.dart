import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ticket_app/modal/product.dart';

class FetchProducts {
  Future<List<ProductList>?> getProducts() async {
    String url =
        'https://dummyjson.com/products?limit=10&skip=10&select=title,price';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body)['products'] as List;
      final products = json.map((e) {
        return ProductList(id: e['id'], price: e['price'], title: e['title']);
      }).toList();
      return products;
    } else {
      return [];
    }
    throw 'Fail to load Products';
  }
}
