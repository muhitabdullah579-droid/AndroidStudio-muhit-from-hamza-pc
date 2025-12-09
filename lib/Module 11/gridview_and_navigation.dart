import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        //childAspectRatio is for card's size
        crossAxisCount: 7,
        childAspectRatio: 1, //childAspectRatio is for card's size, 1=square,0.7=tall,1.5=wide
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,


        children: List.generate(10, (index) {//List.generate is for generate multiple children
          return Card(
            elevation: 20, //is for shadow
            shape: RoundedSuperellipseBorder(
              borderRadius: BorderRadius.circular(20),
            ),


            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Live class',
                  style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                ),
                Icon(Icons.live_tv),
              ],

            ),
          );
        }),
      ),

      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount:8,
      //       crossAxisSpacing: 6,
      //       mainAxisSpacing: 6
      //     ),
      //     itemCount: 10,
      //     itemBuilder: (context,index){
      //       return Container(
      //
      //         width: 12,
      //         child: Center(child: Text('Item = $index')) ,
      //         color: Colors.blue[100*((index%8)+1)],
      //
      //
      //       );
      //     }
      // ),
    );
  }
}
