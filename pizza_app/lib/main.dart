import 'package:flutter/material.dart';
import 'package:pizza_app/LoginScreen.dart';
import 'package:pizza_app/Welcome.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(appBar:AppBar(backgroundColor: Colors.red[400],
    title:Text('Pizza App',style: TextStyle(color: Colors.white),),
  

  
  ) ,
  body:Welcome() ,
  )
  )

  );
}
