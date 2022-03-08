import 'package:first_app/EditJob.dart';
import 'package:first_app/Welcome.dart';
import 'package:first_app/button.dart';
import 'package:flutter/material.dart';

class JobDescribe extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:const Color(0xFF191720),
      body: Padding(
        padding:const  EdgeInsets.only(top:89,left:27,right: 27,bottom: 49),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:  [
            Row(
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Welcome())
                      );
                    },
                    child:const  Icon(Icons.arrow_back_ios,color: Colors.white,size: 28,)),
                const SizedBox(width: 10,),
                const Text("Add New Job",style: TextStyle(
                  color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600

                ),
                ),
              ],
            ),
         Container(
           height: 71,
           margin:const EdgeInsets.only(top:25),
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
             style:  TextStyle(color:Colors.white,fontSize:15,),
             decoration: InputDecoration(
                 border:InputBorder.none,
                 hintText:"Enter position name",hintStyle:  TextStyle(color: Color(0xFF8F8F9E),fontSize:15,fontStyle: FontStyle.normal)
             ),
           ),
         ),
            Container(

              height: 374,
              margin:const EdgeInsets.only(top:28),
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

                style:  TextStyle(color:Colors.white,fontSize:15,),
                decoration: InputDecoration(

                    border:InputBorder.none,
                    hintText:"Describe Requirement...",hintStyle:  TextStyle(color: Color(0xFF8F8F9E),fontSize:15,fontStyle: FontStyle.normal,)
                ),
              ),
            ),
          const Spacer(),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => EditJob())
                  );
                },
                child: Button(label: "Submit Job", onPress:(){}))
            
          ],


        ),
      ),
    );
  }
  // void Submitjob(){
  //
  // }
}
