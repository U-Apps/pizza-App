import 'package:flutter/material.dart';

class categoryPizza extends StatelessWidget {
  final int NumImg  ;
  final String Name , des, prices ;
  const categoryPizza({super.key,required this.NumImg,required this.prices,required this.Name, required this.des});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Card(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/images/${NumImg}.png',
              width: 100,
              height: 100,
            ),
            Column(
              children: <Widget>[
                Text(
                  '$Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  '$des',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Text(
              '$prices',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
