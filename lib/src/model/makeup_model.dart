import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MakeupModel {
  String id;
  String brand;
  String name;
  String price;
  String image_link;
  String description;
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
        product_colors: data['product_colors']
            .map((product_colors) => Product_colors.fromJson(product_colors))
            .toList()
            .cast<Product_colors>(),
      );
}
