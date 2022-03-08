import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  final String name;

  const InputFiled({required this.name}) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top:20),
      padding: const EdgeInsets.all(15),
      decoration:  BoxDecoration(

          color:const Color(0xFF1E1C24),
          borderRadius:BorderRadius.circular(15),
          border: Border.all(
              color: const Color(0xFF5D5D67),
              width: 1
          )
      ),
      child:  TextField(
        style:const  TextStyle(color:Colors.white,fontSize:15,),
        decoration: InputDecoration(
          border:InputBorder.none,
            hintText:name,hintStyle: const TextStyle(color: Color(0xFF8F8F9E),fontSize:15,fontStyle: FontStyle.normal)
        ),
      ),
    );
  }
}
