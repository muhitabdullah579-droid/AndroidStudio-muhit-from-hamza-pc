import 'package:flutter/material.dart';
import 'package:muhit_flutter/Module%2010/button.dart';
import 'package:muhit_flutter/Module%2010/input.dart';
import 'package:muhit_flutter/Module 11/list.dart';
import 'package:muhit_flutter/Module%2011/alert.dart';
import 'package:muhit_flutter/Module%2011/gridview_and_navigation.dart';
import 'package:muhit_flutter/Module%2012/Travel_View/Travel_view_Screan.dart';

import 'Module 11/stack_and_navigation.dart';
import 'Module 12/tab_bar.dart';



class MyTravelApp extends StatelessWidget{
  MyTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.blue,
      //   primarySwatch: Colors.lime,
      //   scaffoldBackgroundColor: Colors.teal,
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.orange,
      //       foregroundColor: Colors.white30,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(40)
      //       )
      //     )
      //   )
      //
      // ),
      title:'Finzy Travel Agency',
        home: ImageStack(),
      routes: {
        '/home' : (context)=>TravelHomeScreen(),
         '/downloads' : (context)=>Gridview(),
        '/settings' : (context)=>AppInput(),
        '/menu' : (context)=>List()
      },
    );

  }
}