import 'package:flutter/material.dart';
import 'package:pizza_app/LoginScreen.dart';
import 'package:pizza_app/Register.dart';
import 'package:pizza_app/Welcome.dart';
import 'package:pizza_app/home.dart';
import 'package:pizza_app/successfulLogin.dart';
import 'package:pizza_app/Profile.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          title: Text(
            'Pizza App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: AccountPage(),
      )));
}
