import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Phone number',
          style: TextStyle(

              fontSize: 40,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.indigoAccent

          ),
        ),
      ),


      // body: ListView.builder(
      //   itemCount: 30,
      //     itemBuilder: (context, index) {
      //      return Card(
      //        child:  ListTile(
      //          title: Text('Muhit'),
      //          subtitle: Text('034747537'),
      //          leading: Icon(Icons.phone),
      //          trailing: Icon(Icons.delete,color: Colors.red),
      //
      //        ),
      //      );
      //   }
      // ),




      // body: ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: (context, index){
      //       return Container(
      //         width: 100,
      //         child:Center(child: Text('Item = $index')) ,
      //         color: Colors.blue[100*(index%8)+1],
      //       );
      //     }
      // ),

      body: ListView.separated(
          itemCount: 10,
          itemBuilder:(context,index){
            return  Card(
                     child:  ListTile(
                       title: Text('Muhit'),
                       subtitle: Text('034747537'),
                       leading: Icon(Icons.phone),
                       trailing: Icon(Icons.delete,color: Colors.red),

                     ),
                   );
          },
          separatorBuilder: (context,index){
            return Divider(
              thickness: 4,
              color: Colors.cyan,
            );
          },
          )




    );

  }
}
