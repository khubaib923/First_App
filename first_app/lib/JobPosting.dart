import 'package:first_app/JobDescription.dart';
import 'package:flutter/material.dart';

class JobPosting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(

      width: 400,
      height: 80,

      margin:const EdgeInsets.only(top:26),
      padding: const EdgeInsets.all(15),
      decoration:  BoxDecoration(

          color:const Color(0xFF201E27),
          borderRadius:BorderRadius.circular(10),
          border: Border.all(
              color: const Color(0xFF5D5D67),
              width: 1
          )
      ),

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
           Row(

             children:  [

               const Text("Flutter Developer Required",style: TextStyle(
                 fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white
               ),
               ),
               const Spacer(),
               
               GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => JobDescribe())
                     );
                   },
                   child:const  Icon(Icons.edit,size: 22,color: Colors.white,)),
               const SizedBox(width:20),
               const Icon(Icons.delete,size: 24,color: Color(0xFFFF5959),
               ),
             ],
             
           ),
          const Text("Karachi, Pakistan",style: TextStyle(
          fontSize: 12,color: Color(0xFF8F8F9E),
          ),
          ),

        ],
      ),


    );
  }
}
