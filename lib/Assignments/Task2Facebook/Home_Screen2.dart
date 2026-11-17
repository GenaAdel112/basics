import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   backgroundColor: Colors.white,
     body: SafeArea(
       child: Column(
         children: [
           Padding(
               padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
           child: Row(
             children: [
               Text('Facebook',style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w900,
                 color: Color(0xFF1877F2),
               ),
               ),
             ],
           ),
     ),
     ],

       ),
     ),
   );
  }

}