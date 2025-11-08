import 'package:flutter/material.dart';
class CityWidget extends StatelessWidget {
  final String img,title,rating;
  const CityWidget({
    super.key,required this.img,required this.title, required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://www.canva.com/ai-image-generator?prompt=High%20quality%20stock%20photo%20of%20nature%2C%20professional%20lighting%2C%20sharp%20focus%2C%20natural%20colors%2C%20realistic%20detail%2C%20modern%20composition%2C%20commercial%20use%20standard%2C%20editorial%20style%2C%20ultra%20HD%2C%20clean%20background&utm_source=pexels&utm_campaign=aigc_pexelscampaign&utm_medium=partner',
        ),
        Positioned(
            child:
            Text('This is my peace world',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
              ),

            )
        ),
      ],
    );
  }
}