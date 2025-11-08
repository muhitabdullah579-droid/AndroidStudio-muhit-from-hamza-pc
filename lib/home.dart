import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finzy TravelApp'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

      //SingleChildScrollView is for scroll down
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,


          children: [
            Text('Menu',
              style: TextStyle(


                fontSize: 50,
                color: Colors.greenAccent,
                fontWeight: FontWeight.w300,
              ),
            ),


            Text('Country Lists',
              style: TextStyle(
                fontSize: 30,
                color: Colors.greenAccent,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),


    );
  }
}

