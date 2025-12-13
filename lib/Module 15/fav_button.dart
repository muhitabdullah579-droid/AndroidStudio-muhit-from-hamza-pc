import 'package:flutter/material.dart';

class FAvBtn extends StatefulWidget {
  const FAvBtn({super.key});

  @override
  State<FAvBtn> createState() => _FAvBtnState();
}

class _FAvBtnState extends State<FAvBtn> {
  bool isFav =false;
  toogleFav(){
    setState(() {
      isFav = !isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: IconButton(
            onPressed:  toogleFav,
            icon: Icon(Icons.favorite_border),
          ),
        ),
      ),
    );
  }
}
