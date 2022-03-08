


import 'package:first_app/SignUp.dart';
import 'package:first_app/Input_Field.dart';
import 'package:first_app/button.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Signup()
    );
  }
}
