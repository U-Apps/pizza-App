import 'package:flutter/material.dart';
import 'package:pizza_app/LoginScreen.dart';
import 'package:pizza_app/Register.dart';
import 'package:pizza_app/Welcome.dart';
import 'package:pizza_app/cart_screen.dart';
import 'package:pizza_app/component/PizzaShows.dart';
import 'package:pizza_app/forget.dart';
import 'package:pizza_app/home.dart';
import 'package:pizza_app/pizza_menu.dart';
import 'package:pizza_app/Profile.dart';

void main() {
  runApp(MaterialApp(
      routes: {
        'Regitered': (context) => SignUpPage(),
        'welcome': (context) => Welcome(),
        'home': (context) => Home(),
        'login': (context) => Loginscreen(),
        'forget': (context) => ForgetPassWordScreen()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Text(
            'Pizza App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:Welcome(),
      )));
}
