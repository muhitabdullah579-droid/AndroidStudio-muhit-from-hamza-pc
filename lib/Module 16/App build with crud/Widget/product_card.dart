import 'package:flutter/material.dart';

import '../models/product_model.dart';

//basic widget for product interface

class ProductCard extends StatelessWidget {
  final Data product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: Image.network(
                  (product.img != null &&
                          product.img.toString().startsWith('https'))
                      ? product.img.toString()
                      : 'https://www.bing.com/th/id/OIP.DZLWFqYqIG4l_yJaqOuJXgHaHa?w=193&h=193&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2',
                  height: 100,
                  width: 80,
                ),
              ),
              Text(
                product.productName.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text("Price: \$${product.unitPrice} | QTY: ${product.qty}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: Colors.orange),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
