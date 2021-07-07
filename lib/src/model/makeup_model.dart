import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MakeupModel {
  dynamic id;
  dynamic brand;
  dynamic name;
  dynamic price;
  dynamic image_link;
  dynamic description;
  List<Product_colors> product_colors;

  MakeupModel(
      {this.id,
      this.brand,
      this.name,
      this.price,
      this.image_link,
      this.description,
      this.product_colors});

  factory MakeupModel.fromJson(Map<String, dynamic> makeup) => MakeupModel(
        id: makeup['id'],
        brand: makeup['brand'],
        name: makeup['name'],
        price: makeup['price'],
        image_link: makeup['image_link'],
        description: makeup['description'],
        product_colors: makeup['product_colors']
            .map((product_colors) => Product_colors.fromJson(product_colors))
            .toList()
            .cast<Product_colors>(),
      );
}

class Product_colors {
  String colour_name;
  String hex_value;
  Product_colors({this.colour_name, this.hex_value});

  factory Product_colors.fromJson(
    Map<String, dynamic> colors,
  ) =>
      Product_colors(
          colour_name: colors['product_colors']['colour_name'],
          hex_value: colors['product_colors']['hex_value']);
}
