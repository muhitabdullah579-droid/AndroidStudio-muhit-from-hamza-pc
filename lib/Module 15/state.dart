import 'package:flutter/material.dart';

class state extends StatefulWidget {
  const state({super.key});

  @override
  State<state> createState() => _stateState();
}

class _stateState extends State<state> {
  int num = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(),
              style: TextStyle(
               fontSize: 60,
               color: Colors.blue
              ),
              ),
              Row(
                children: [
                  Spacer(),
                  IconButton(onPressed: (){
                    setState(() {
                      num++;
                      print('num=== $num');
                    });

                  }, icon: Icon(Icons.plus_one)),
                  Spacer(),
                  IconButton(onPressed: (){
                   setState(() {
                     num--;
                     print('num=== $num');
                   });
                  }, icon: Icon(Icons.exposure_minus_1)),
                  Spacer(),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
