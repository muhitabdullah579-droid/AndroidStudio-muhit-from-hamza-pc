import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:muhit_flutter/Module%2016/App%20build%20with%20crud/urls.dart';

import 'models/product_model.dart';


//making this class to call api


class Controller{
  List<Data>product =[];

  Future<dynamic> fetchProduct() async {
    final response = await http.get(Uri.parse(Urls.readProduct));

    //to see the response data:
    print(response.statusCode);

    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      ProductModel model = ProductModel.fromJson(data);
      product = model.data ?? [];
    }
  }




}


