import 'package:first_app/JobPosting.dart';
import 'package:first_app/SignIn.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top:79,left: 27,right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("Welcome",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,fontStyle:FontStyle.normal,color: Colors.white),
            ),
            Row(
              children:  [
                const Text("Khubaib Irfan",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,color: Colors.white),
                ),

                Padding(
                  padding:const  EdgeInsets.only(left:130),

                  child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SignIn())
                        );
                      },
                      child:const  Icon(Icons.arrow_back_ios,color: Colors.white,)),
                )
              ],
            ),

        Container(

          margin:const EdgeInsets.only(top:26),
          padding: const EdgeInsets.all(15),
          decoration:  BoxDecoration(

              color:const Color(0xFF1E1C24),
              borderRadius:BorderRadius.circular(15),
              border: Border.all(
                  color: const Color(0xFF5D5D67),
                  width: 1
              )
          ),

          child:  const TextField(
            style:TextStyle(color:Colors.white,fontSize:15,),
            decoration: InputDecoration(
                border:InputBorder.none,
                prefixIcon: Icon(Icons.search,color: Color(0xFf5D5D67),size: 23,),
                hintText:"Search keywords..",hintStyle: TextStyle(color: Color(0xFF8F8F9E),fontSize:15,fontStyle: FontStyle.normal)
            ),
          ),
        ),
         
         Expanded(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),
                 JobPosting(),

               ],
             ),
           ),
         ),
         




          ],
        ),
      ),
    );
  }
}
