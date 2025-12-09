import 'package:flutter/material.dart';

import 'Widget/city_widget.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Page Logo',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.indigoAccent,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Positioned(
                  // top: 5,
                  // left: 5,
                  // bottom: 5,
                  // right: 5,
                  child: Container(height: 180, width: 120, color: Colors.blue),
                ),
                Positioned(
                  left: 10,
                  right: 25,
                  top: 5,
                  bottom: 5,
                  child: Container(height: 50, width: 50, color: Colors.orange),
                ),
              ],
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://www.canva.com/ai-image-generator?prompt=High%20quality%20stock%20photo%20of%20nature%2C%20professional%20lighting%2C%20sharp%20focus%2C%20natural%20colors%2C%20realistic%20detail%2C%20modern%20composition%2C%20commercial%20use%20standard%2C%20editorial%20style%2C%20ultra%20HD%2C%20clean%20background&utm_source=pexels&utm_campaign=aigc_pexelscampaign&utm_medium=partner',
                  ),
                ),
                Positioned(
                  // top: 5,
                  // left: 5,
                  bottom: 5,
                  right: 5,
                  child: Container(
                    height: 40,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Stack(
              children: [
                Positioned(
                  child: Text(
                    'My world',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CityWidget(
                        img:
                         "assets/img.png",
                        title: 'This is my peace world',
                            rating: '5.0',
                      ),
                      SizedBox(width: 5),
                      CityWidget(
                        img:
                        'assets/OIP (1).webp',
                        title: 'Dubai',
                        rating: '5.0',
                      ),
                      SizedBox(width: 5),
                      CityWidget(
                        img:
                        'assets/OIP (2).webp',
                        title: 'Bangladesh',
                        rating: '5.0',
                      ),

                  
                    ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
