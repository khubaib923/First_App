import 'package:flutter/material.dart';

class Button extends StatelessWidget {
final String label;
final Function onPress;

  const Button({required this.label,required this.onPress});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            decoration:  BoxDecoration(
                color:Colors.white,
                borderRadius:BorderRadius.circular(15),
                border: Border.all(
                    color: const Color(0xFF5D5D67),
                    width: 1
                )
            ),
            child: GestureDetector(
              onTap: onPress(),
              child: Text(label,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF191720)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
