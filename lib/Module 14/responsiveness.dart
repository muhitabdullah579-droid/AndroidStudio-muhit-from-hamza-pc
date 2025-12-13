import 'package:flutter/material.dart';

class Res extends StatelessWidget {
  const Res({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final bool isTablet = screenSize.width > 600;
    final Orientation oriantation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Text(
          "Responsiveness",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(index.toString()));
                },
              ),
              Text(
                'device in ${oriantation} Mood',
                style: TextStyle(fontSize: 25),
              ),
              oriantation == Orientation.portrait
                  ? Text(
                      'This is portrait mood',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  : SizedBox(height: 8),
              oriantation == Orientation.portrait
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone_android_sharp, size: 50),
                        Icon(Icons.apple_sharp, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone_android_sharp, size: 50),
                        Icon(Icons.apple_sharp, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    ),
              Text('Fixed Size'),

              SizedBox(height: 10),

              Container(
                width: 100,
                height: 150,
                color: Colors.blue,
                child: Text('150*100'),
              ),

              Text('Aspect Ratio'),
              SizedBox(height: 10),
              AspectRatio(
                aspectRatio: 10 / 6,
                child: Container(color: Colors.red),
              ),
              Container(
                color: Colors.purple,
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.2,
              ),
              Text(
                'data',
                style: TextStyle(fontSize: screenSize.width > 600 ? 32 : 18),
              ),
              Text(
                'data2',
                style: TextStyle(fontSize: 0.04 * screenSize.height),
              ),
              SizedBox(height: 10),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(height: 60, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text('Adaptive Layout${isTablet ? 'Tablet' : 'Mobile'}'),
              isTablet
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone, size: 50),
                        Icon(Icons.tablet, size: 50),
                        Icon(Icons.window_sharp, size: 50),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
