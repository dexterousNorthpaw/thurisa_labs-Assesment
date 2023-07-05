import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:thurisa_labs/pages/product_details/model/products_details_model.dart';
import 'package:http/http.dart' as http;

class ProductDetailsRepo{

  static Future<ProductDetailsModel> fetchDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? id = prefs.getString('id');
    var client = http.Client();

    var response = await client.get(Uri.parse("https://fakestoreapi.com/products/$id"));
    if(response.statusCode == 200) {
      return ProductDetailsModel.fromJson(jsonDecode(response.body));
    }else{
      throw Exception("Failed to Load");
    }
  }
}