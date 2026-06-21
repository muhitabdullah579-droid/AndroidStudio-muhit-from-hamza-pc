import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:muhit_flutter/Module%2010/button.dart';
import 'package:muhit_flutter/Module%2010/input.dart';
import 'package:muhit_flutter/Module 11/list.dart';
import 'package:muhit_flutter/Module%2011/alert.dart';
import 'package:muhit_flutter/Module%2011/gridview_and_navigation.dart';
import 'package:muhit_flutter/Module%2012/Travel_View/TravelHomeScreen.dart';
import 'package:muhit_flutter/test_train_ticket.dart';

import 'Module 10/image.dart';
import 'Module 11/stack_and_navigation.dart';
import 'Module 12/navigation.dart';
import 'Module 16/App build with crud/main_ui.dart';





class MyTravelApp extends StatelessWidget{
  MyTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
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
            title: 'Finzy Travel Agency',
            home:  Crud_ui(),

            routes: {
              '/home': (context) => ImageStack(),
              '/downloads': (context) => Gridview(),
              '/settings': (context) => AppInput(),
              '/account': (context) => Account(),
              '/navigation': (context) => BottomNev()
            },
          ); //Material
        },
    );

  }
}




