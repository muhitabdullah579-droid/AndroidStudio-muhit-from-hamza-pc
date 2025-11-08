import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent[10],
        //backgroundColor:Colors.grey.shade50

        appBar: AppBar(
         title: Text('List manu'),
         centerTitle: true,
         backgroundColor: Colors.limeAccent
        ),//Appbar



      body: Center(
        child:  Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )// RoundedRectangleBorder
              ),
              onPressed: (){}, child: Text('Enter')
            ),//ElevatedButton


            SizedBox(height: 40),


            SizedBox(
              height: 40,
              width: 200,
            //width:double.infinity,
              child:    ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
                onPressed: (){}, child: Text('Enter')
              ),//ElevatedButton
            ),//SizedBox
            SizedBox(height: 60,),


            OutlinedButton(onPressed: (){},
                   child: Text('Read More',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                   )
            ),//OutlinedButton


            SizedBox(height: 40),


            Icon(Icons.phone_android,
              size: 40,
              color: Colors.redAccent,

            ),// Icon


            IconButton(onPressed: (){},
                icon: Icon(Icons.delete,
                  size: 15,
                  color: Colors.deepOrange,)
            ),//IconButton

            SizedBox(height: 30,),

            GestureDetector(
              onLongPress: (){
                print('Taped on long press');
              },
              onTap: (){
                print('Taped on Country list');
              },



             child: Text('Country list',
               style: TextStyle(
                 fontSize: 40,

               ),
             ),
            ),




            InkWell(
              onTap: (){
                print('Taped on Place list');
              },
              child: Text('Place list',
                style: TextStyle(
                  fontSize: 30,

                ),
              ),
            )






          ],
        ),//Column
      ),//Center
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('Clicked on add');

       },
       child: Icon(Icons.add),
      )
      
    );//Scaffold
  }
}
