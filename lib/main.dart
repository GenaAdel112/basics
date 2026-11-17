import 'package:basics/Login/login_Screen.dart';
import 'package:basics/hotel/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:basics/Assignments/Task2Facebook/Home_Screen2.dart';
import 'package:basics/Assignments/Task2Facebook/Login_Screen2.dart';
import 'package:basics/Assignments/Task2Facebook/Splash_Screen.dart';
import 'package:basics/Assignments/WhattsApp/Task1whatts.dart';
void main() {
 runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen2(),
        debugShowCheckedModeBanner: false,
        /*debugShowCheckedModeBanner: false,
        initialRoute: "Login",
        routes:{
          "Login": (context) => LoginScreen(),
           "Home": (context) => HomeScreen(),*/

    );
  }
 
}

