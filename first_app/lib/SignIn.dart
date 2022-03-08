import 'package:first_app/Input_Field.dart';
import 'package:first_app/Welcome.dart';
import 'package:first_app/button.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF191720),
      body:Padding(
        padding:const  EdgeInsets.only(top:110,left: 25,bottom: 59,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
            const Text("Let’s sign you in",style: TextStyle(color:Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
            ),
            const  SizedBox(height: 14),
            const Text("Welcome back \nyou’ve been missed !",style: TextStyle(color:Colors.white,fontSize: 30),
            ),
            const SizedBox(height: 47),
            const InputFiled(name: "Enter your email address"),
            const InputFiled(name: "Enter your password"),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Don’t have an account ? ",style: TextStyle(fontSize: 15,color: Color(0xFF8F8F9E)),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Welcome())
                    );
                  },
                  child:const  Text("Register",style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                )

              ],
            ),
            const SizedBox(height: 11),

            Button(label: "Sign In", onPress: OnSignup)
          ],
        ),
      ),

    );


  }
  void OnSignup(){

  }

}