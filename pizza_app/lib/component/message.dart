import 'package:flutter/material.dart';

class Message {
  showSuccessDialog(
      BuildContext Content, String content, Icon iconss, String route) {
    showDialog(
      context: Content,
      builder: (BuildContext context) {
        return Center(
          child: AlertDialog(
            contentPadding: EdgeInsets.only(left: 20, right: 30, top: 15),
            content: Container(
              width: 200,
              height: 260,
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
                      fontSize: 20,
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
                  Navigator.pushNamed(context, '${route}');
            
                },
                child: Text('Yes'),
              ),
            ],
          ),
        );
      },
    );
  }
}
