import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController phonecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Customers EntryPoint',
          style: TextStyle(

            fontSize: 40,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.indigoAccent

          ),
        ),
      ),



      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10,left: 5),
            child: TextFormField(
              controller: namecontroller,
              maxLength: 30,

              decoration: InputDecoration(
                hintText: 'Enter your name',
                hintStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15
                ),


                helperText: 'Enter your full name',
                helperStyle: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 8
                ),

                labelText: 'Customers Name',

                prefixIcon: Icon(Icons.face),

                suffixIcon: Icon(Icons.check),

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                    width: 2
                  ),

                ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.red.shade300,
                        width: 2
                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2
                    ),

                  ),
                  filled: true,
                  fillColor: Colors.blueGrey.shade200

              ),
            ),
          ),

          SizedBox(height: 20),


          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10,left: 5),
            child: TextField(
              controller: phonecontroller,
              maxLength: 11,
              keyboardType: TextInputType.phone,
              //cursorColor: ,

              decoration: InputDecoration(
                  hintText: 'Enter your Number',
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 15
                  ),


                  helperText: 'Enter your Number',
                  helperStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 8
                  ),

                  labelText: 'Enter Number',
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2
                    ),



                  ),
                enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.red.shade300,
                          width: 2
                      ),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.lightBlue,
                    width: 2
                  ),

                ),
                filled: true,
                fillColor: Colors.blueGrey.shade200
              ),
            ),
          ),


          SizedBox(height: 20),


          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10,left: 5),
            child: TextField(
              controller: passwordcontroller,
              maxLength: 10,
              obscureText: true,

              decoration: InputDecoration(
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 15
                  ),


                  helperText: 'Enter a Strong Password',
                  helperStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 8
                  ),

                  labelText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 2
                    ),



                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.red.shade300,
                        width: 2
                    ),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2
                    ),

                  ),
                  filled: true,
                  fillColor: Colors.blueGrey.shade200
              ),
            ),
          ),

          SizedBox(height: 20,),

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
                onPressed: (){
                  print(namecontroller.text);
                  print(phonecontroller.text);
                  print(passwordcontroller.text);
                 // passwordcontroller.clear();
                 // phonecontroller.clear();
                }, child: Text('Submit')
            ),//ElevatedButton
          ),
        ]
      )
    );
  }
}
