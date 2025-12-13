import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'New page',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.indigoAccent,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back')),
          ),
        ],
      ),
    );
  }
}
