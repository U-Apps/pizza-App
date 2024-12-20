import 'package:flutter/material.dart';
// import 'package:pizza_app/component/ShowDailog.dart';
import 'package:pizza_app/component/message.dart';
import 'Register.dart';

class ForgetPassWordScreen extends StatefulWidget {
  const ForgetPassWordScreen({super.key});

  @override
  State<ForgetPassWordScreen> createState() => _ForgetPassWordScreenState();
}

class _ForgetPassWordScreenState extends State<ForgetPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password?'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
           
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.red[400],
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  labelText: 'Email/Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.white,
                  filled: true,
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    padding: EdgeInsets.only(
                        left: 80, top: 15, right: 80, bottom: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Message message = new Message();
                  message.showSuccessDialog(
                      context,
                      'message be send \nto your Phone',
                      Icon(Icons.warning),
                      'login');

                },
                child: Text('Send verification code'),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
