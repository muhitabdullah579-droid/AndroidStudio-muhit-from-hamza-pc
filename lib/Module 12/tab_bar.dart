import 'package:flutter/material.dart';
import 'package:muhit_flutter/Module%2010/input.dart';
import 'package:muhit_flutter/Module 11/list.dart';
import '../Module 11/gridview_and_navigation.dart';
import '../Module 11/stack_and_navigation.dart';
import '../Module 14/usecase_of_list.dart';
import 'Travel_View/TravelHomeScreen.dart';
import 'Travel_View/travelhomescreen2.dart';

class Tab_of_Appbar extends StatelessWidget {
  const Tab_of_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Muhit Travel Agency',
            style: TextStyle(

                fontSize: 40,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.indigoAccent

            ),
          ),
          backgroundColor: Colors.black45,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.lime,
            indicatorWeight: 10,

            indicator: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            labelStyle: TextStyle(
              fontSize: 20
            ),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              fontSize: 20
            ),
            tabs:[
            Tab(
              icon: Icon(Icons.home),
              text: ('Home'),
            ),
            Tab(
              icon: Icon(Icons.list),
              text: ('Product List'),

            ),
            Tab(
                icon: Icon(Icons.login_sharp),
                text: ('Log In'),
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: ('Settings'),

            ),








          ],
          ),

        ),
        body: TabBarView(
            children:[
              // Container(
              //   height: 200,
              //   color: Colors.blue,
              //   child: Text('Home',
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: Colors.blue
              //   ),
              //   ),
              //
              // ),
              // Container(
              //   height: 200,
              //   color: Colors.blue,
              //   child: Text('Downloads',
              //     style: TextStyle(
              //         fontSize: 20,
              //         color: Colors.pinkAccent
              //     ),
              //   ),
              //
              // ),
              // Container(
              //   height: 200,
              //   color: Colors.blue,
              //   child: Text('Settings',
              //     style: TextStyle(
              //         fontSize: 20,
              //         color: Colors.lightGreen
              //     ),
              //   ),
              //
              // ),
              // Container(
              //   height: 200,
              //   color: Colors.blue,
              //   child: Text('Menu',
              //     style: TextStyle(
              //         fontSize: 20,
              //         color: Colors.amber
              //     ),
              //   ),
              //
              // )
              TravelHomeScreen2(),
              Haque_product_list(),
              AppInput(),
              ImageStack(),



            ]
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                    backgroundImage:NetworkImage('https://images.unsplash.com/photo-1607853554439-0069ec0f29b6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym13fGVufDB8fDB8fHww')

                    ),
                    SizedBox(height: 10,),
                    Text('A.A.Muhit'),
                    Text('muhitabdullah@gmail.com',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Home'),
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TravelHomeScreen2()));
                  },
              ),//list title of home
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Add Product'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Haque_product_list()));
                },
              ),//list title of live class
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Live Class'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview()));
                },
              ),//list title of live exam
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('LogIn'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AppInput()));
                },
              ),//list title of login
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
