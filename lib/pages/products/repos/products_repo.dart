import 'dart:convert';
import 'dart:developer';

import 'package:thurisa_labs/pages/products/models/products_model.dart';
import 'package:http/http.dart' as http;
class ProductsRepo{
  
  static Future<List<ProductsModel>> fetchProducts() async {
    var client = http.Client();
    List<ProductsModel> products = [];
    try{
      var response = await client.get(
        Uri.parse("https://fakestoreapi.com/products")
      );
      List result = jsonDecode(response.body);
      for(int i =0; i<result.length;i++){
        ProductsModel product = ProductsModel.fromJson(result[i] as Map<String, dynamic>);
        products.add(product);
      }
      return products;
    }
    catch (e){
      log(e.toString());
      return[];
    }
  }
}