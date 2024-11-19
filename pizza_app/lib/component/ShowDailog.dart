import 'package:flutter/material.dart';
import 'package:pizza_app/successfulLogin.dart';

class Showdialog extends StatefulWidget {
  final String content ;
  final Icon icon;
  const Showdialog({super.key,required this.content, required this.icon});

  @override
  State<Showdialog> createState() => _ShowdialogState();
}

class _ShowdialogState extends State<Showdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showSuccessDialog(context,widget.content,widget.icon),
    );
  }
}

showSuccessDialog(BuildContext context,String content,Icon iconss) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: AlertDialog(
          contentPadding: EdgeInsets.only(left: 20, right: 30, top: 15),
          content:Container(
      width: 200,
      height: 200,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconss.icon,
            size: 100,
            color: Colors.green,
          ),
          SizedBox(height: 25),
          Text(
            '$content',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'home');
                // إغلاق الحوار
              },
              child: Text('موافق'),
            ),
          ],
        ),
      );
    },
  );
}
