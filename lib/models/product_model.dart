import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProductModel {
  String? id;
  String? productName;
  String? description;
  String? productImage;
  String? price;
  String? ratings;
  List<String>? sizes;
  ProductModel({
    this.id,
    this.productName,
    this.description,
    this.productImage,
    this.price,
    this.ratings,
    this.sizes,
  });

  ProductModel copyWith({
    String? id,
    String? productName,
    String? description,
    String? productImage,
    String? price,
    String? ratings,
    List<String>? sizes,
  }) {
    return ProductModel(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      description: description ?? this.description,
      productImage: productImage ?? this.productImage,
      price: price ?? this.price,
      ratings: ratings ?? this.ratings,
      sizes: sizes ?? this.sizes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productName': productName,
      'description': description,
      'productImage': productImage,
      'price': price,
      'ratings': ratings,
      'sizes': sizes,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      productName: map['productName'],
      description: map['description'],
      productImage: map['productImage'],
      price: map['price'],
      ratings: map['ratings'],
      sizes: List<String>.from(map['sizes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, productName: $productName, description: $description, productImage: $productImage, price: $price, ratings: $ratings, sizes: $sizes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.productName == productName &&
        other.description == description &&
        other.productImage == productImage &&
        other.price == price &&
        other.ratings == ratings &&
        listEquals(other.sizes, sizes);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        productName.hashCode ^
        description.hashCode ^
        productImage.hashCode ^
        price.hashCode ^
        ratings.hashCode ^
        sizes.hashCode;
  }
}
