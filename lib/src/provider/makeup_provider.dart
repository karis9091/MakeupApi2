import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:makeup2/src/model/makeup_model.dart';

class MakeupProvider {
  final String _url = 'http://makeup-api.herokuapp.com/api/v1/products.json';
  final http = Dio();

  Future obtenerMakeUp() async {
    final response = await http.get(_url);
    final responseData = response.data;
    return MakeupModel.fromJson(responseData);
  }
}
