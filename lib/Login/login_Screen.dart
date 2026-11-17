import 'package:basics/hotel/home_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.brown,
     appBar: AppBar(
       backgroundColor: Colors.teal,
       centerTitle: true,
       title: Text('Login Screen',
       style: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.bold,
         color: Colors.white,
       ),
       ),
     ),
     body: Center(
       child: ElevatedButton(onPressed: (){
       Navigator.of(context).pushNamed("Home");
       }, child: Text('Login',
         style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
           color: Colors.green,
         ),
       ),
       ),
     ),
   );
  }

}