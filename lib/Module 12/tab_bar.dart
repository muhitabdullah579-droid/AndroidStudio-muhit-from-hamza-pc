import 'package:flutter/material.dart';
import 'package:muhit_flutter/Module%2010/input.dart';
import 'package:muhit_flutter/Module 11/list.dart';
import '../Module 11/gridview_and_navigation.dart';
import '../Module 11/stack_and_navigation.dart';
import 'Travel_View/Travel_view_Screan.dart';

class Tab_of_Appbar extends StatelessWidget {
  const Tab_of_Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Udvash',
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
            indicatorWeight: 4,
            indicatorPadding: EdgeInsets.all(5),
            indicator: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(12),
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
              icon: Icon(Icons.download),
              text: ('Downloads'),

            ),
            Tab(
              icon: Icon(Icons.settings),
              text: ('Settings'),

            ),
            Tab(
              icon: Icon(Icons.menu),
              text: ('Menu'),

            )





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
              TravelHomeScreen(),
              Gridview(),
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
                      backgroundImage: NetworkImage('https://www.canva.com/ai-image-generator?prompt=High%20quality%20stock%20photo%20of%20nature%2C%20professional%20lighting%2C%20sharp%20focus%2C%20natural%20colors%2C%20realistic%20detail%2C%20modern%20composition%2C%20commercial%20use%20standard%2C%20editorial%20style%2C%20ultra%20HD%2C%20clean%20background&utm_source=pexels&utm_campaign=aigc_pexelscampaign&utm_medium=partner'),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageStack()));
                  },
              ),//list title of home
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Live Class'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gridview()));
                },
              ),//list title of live class
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Live Exam'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>List()));
                },
              ),//list title of live exam
              Divider(),
              ListTile(
                visualDensity: VisualDensity(horizontal:0,vertical: -2),
                title: Text('Login'),
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
