import 'package:flutter/material.dart';
import 'package:muhit_flutter/Module%2016/App%20build%20with%20crud/controller.dart';

import 'Widget/product_card.dart';

class Crud_ui extends StatefulWidget {
  const Crud_ui({super.key});

  @override
  State<Crud_ui> createState() => _Crud_uiState();
}

class _Crud_uiState extends State<Crud_ui> {
  Controller controller = Controller();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.fetchProduct();
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(

        title: Text('Product list',
        style: TextStyle(
          fontSize: 50,
          backgroundColor: Colors.greenAccent,
        ),),
        centerTitle: true,

      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 1.4

        ),
        itemCount: controller.product.length,
        itemBuilder: (context, index) {
          var product = controller.product[index];
          return ProductCard(product: product,);
        },
      ),
    );
  }
}


