import 'package:flutter/material.dart';

class FAvBtn extends StatefulWidget {
  const FAvBtn({super.key});

  @override
  State<FAvBtn> createState() => _FAvBtnState();
}

class _FAvBtnState extends State<FAvBtn> {
  bool isFav =false;
  bool isPassword =false;
  toogleFav(){
    setState(() {
      isFav = !isFav;
    });
  }
  showPassword(){
    setState(() {
      isPassword = !isPassword;
    });
    Future.delayed(Duration(seconds: 2),(){
      setState(() {
        isPassword=false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Text(
          "Do You Like BMW?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: 
      SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 500,
                color: Colors.blue,
                child: Center(
                  child: Center(child: Text('If you do than give password for your hidden ans and react')),
                ),
              ),
              TextField(
                obscureText: !isPassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Checkbox(value: isPassword, onChanged: (value){
                    print(value);
                    setState(() {
                      isPassword = value ?? false;
                    });
                  }),
                  suffixIcon: IconButton(onPressed: showPassword, icon: Icon(isPassword?Icons.visibility:Icons.visibility_off))
                ),
              ),
              IconButton(
                onPressed:  toogleFav,
                color: isFav? Colors.red:Colors.grey,
                icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, size: 40,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
