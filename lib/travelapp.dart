import 'package:flutter/material.dart';
import 'package:muhit_flutter/Module%2010/image.dart';
import 'Module 11/list.dart';
import 'Module 10/input.dart';
import 'Module 11/gridview.dart';
import 'Module 11/stack.dart';


class MyTravelApp extends StatelessWidget{
  MyTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Finzy Travel Agency',
      home: ImageStack(),
    );

  }
}