// // import 'dart:convert';
// // import 'dart:developer';
// // import 'package:http/http.dart' as http;
// // import 'package:thurisa_labs/pages/categories/model/categories_model.dart';
// //
// // class CategoriesRepo{
// //
// //   static Future<List<CategoriesModel>> getCategories() async{
// //     var client = http.Client();
// //     List<CategoriesModel> categories = [];
// //     try{
// //       var response = await client.get(
// //         Uri.parse("https://fakestoreapi.com/categories")
// //       );
// //       List result = jsonDecode(response.body);
// //       for(int i =0; i < result.length; i++){
// //         CategoriesModel category = (result[i] as Map<String, dynamic>);
// //         categories.add(category);
// //       }
// //
// //     } catch(e){
// //       log(e.toString());
// //       return[];
// //     }
//
//   }
// }