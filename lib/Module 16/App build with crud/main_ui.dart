import 'package:flutter/material.dart';

class Crud_ui extends StatefulWidget {
  const Crud_ui({super.key});

  @override
  State<Crud_ui> createState() => _Crud_uiState();
}

class _Crud_uiState extends State<Crud_ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Image.asset(
                    "assets/WhatsApp Image 2025-12-09 at 23.09.40_49d6adf1.jpg",
                    height: 60,
                    width: 50,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
