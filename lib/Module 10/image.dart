import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY Account',
          style: TextStyle(

              fontSize: 40,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.indigoAccent

          ),
        ),
      ),



      body: Column(
        children: [
          CircleAvatar(
            child: Image.asset('assets/WhatsApp Image 2025-12-09 at 23.09.40_49d6adf1.jpg',
            width: 80,
            height: 80,),
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
          Text('Create your account'),

          SizedBox(height: 10),
          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: namecontroller,
                    //maxLength: 30,

                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.red, fontSize: 15),

                      // helperText: 'Enter your full name',
                      // helperStyle: TextStyle(
                      //  color: Colors.lightBlue,
                      //    fontSize: 8
                      // ),
                      labelText: 'Users Name',
                      prefixIcon: Icon(Icons.face),
                      suffixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),

                      ),

                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                    ),
                  ), //TextFormField of name

                  SizedBox(height: 20,),

                  TextFormField(
                    controller: phonecontroller,
                    //maxLength: 30,

                    decoration: InputDecoration(
                      hintText: 'Enter your number',
                      hintStyle: TextStyle(color: Colors.red, fontSize: 15),

                      // helperText: 'Enter your full name',
                      // helperStyle: TextStyle(
                      //  color: Colors.lightBlue,
                      //    fontSize: 8
                      // ),
                      labelText: 'Users Number',
                      prefixIcon: Icon(Icons.phone),
                      suffixIcon: Icon(Icons.check),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),

                      filled: true,
                      fillColor: Colors.blueGrey.shade50,
                    ),

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Pls enter your name';
                      } else if (value.length != 11) {
                        return 'Pls enter your Bangladeshi name';
                      } else {
                        return null;
                      }
                    },
                  ),//TextFormField of number


                  SizedBox(height: 15,),

                  TextFormField(
                    controller: passwordcontroller,
                    //maxLength: 10,
                    obscureText: true,

                    decoration: InputDecoration(
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Colors.red, fontSize: 15),

                      helperText: 'Enter attlest',
                      helperStyle: TextStyle(color: Colors.blue, fontSize: 8),

                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                      ),


                      filled: true,
                      fillColor: Colors.blueGrey.shade50,

                    ),

                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Pls enter a password';
                      }else if(value.length<8){
                        return 'Pls enter 8 characters for strong password';
                      }else{
                       return null;
                      }
                    },
                  ),//TextFormField of password

                  SizedBox(height: 15,),

                  SizedBox(
                    height: 40,
                    width: 200,
                    //width:double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        if(_formkey.currentState!.validate()){

                          print(namecontroller.text);
                          print(passwordcontroller.text);
                        }
                      },
                      child: Text('Enter'),
                    ), //ElevatedButton
                  ),

                ],
              ),
            ),
          ),


          Container(
            alignment: Alignment.center,
            height: 50,
              width: 400,

            child: Text('data'),

            decoration: BoxDecoration(
              color: Colors.amberAccent,
              border: Border.all(
                width: 10,
                color: Colors.black38
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.white30,
                  offset: Offset(5, 5)
                )
              ]
            ),

          ),


          Card(
            color: Colors.cyan,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Card me soagat he'),
            ),
          )

        ],
      ),
    );
  }
}
