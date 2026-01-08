import 'package:flutter/material.dart';

import '../Module 10/button.dart';

class Life_Cycle extends StatefulWidget {
  const Life_Cycle({super.key});

  @override
  State<Life_Cycle> createState() => _Life_CycleState();
}

class _Life_CycleState extends State<Life_Cycle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Button()),
                );
              },
              child: Text('Enter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Button()),
                );
              },
              child: Text('Enter'),
            ),
          ],
        ),
      ),
    );
  }
}
