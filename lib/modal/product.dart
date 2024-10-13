// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'dart:convert';

List<ProductList> productListFromJson(String str) => List<ProductList>.from(
    json.decode(str).map((x) => ProductList.fromJson(x)));

String productListToJson(List<ProductList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductList {
  int id;
  String title;
  double price;

  ProductList({
    required this.id,
    required this.title,
    required this.price,
  });

  ProductList copyWith({
    int? id,
    String? title,
    double? price,
  }) =>
      ProductList(
        id: id ?? this.id,
        title: title ?? this.title,
        price: price ?? this.price,
      );

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
      };
}
