import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List users = [];

  Future fatchUsers()async{
    final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
    headers: {
      'Accept' : 'application/json'
    }
    );
    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          final user = users[index];
          return Card(
            child: ListTile(

              leading: CircleAvatar(
                child: Text(users[index]['name'][0]),
              ),
              title: Text(users[index]['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Username:${user['username']}',
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                  Text('Email : ${user['email']}',
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                  Text('Phone : ${user['phone']}',
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),
                  Text('Web : ${user['website']}',
                    style: TextStyle(
                        color: Colors.black45
                    ),
                  ),


                ],
              ),
            ),
          );
        },
      ),



    );
  }
}
