import 'package:flutter/material.dart';

class Pizzashows extends StatefulWidget {
  final String Tital, des;
  final int imgName;
  const Pizzashows(
      {super.key,
      required this.Tital,
      required this.des,
      required this.imgName});

  @override
  State<Pizzashows> createState() => _PizzashowsState();
}

class _PizzashowsState extends State<Pizzashows> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color.fromARGB(255, 209, 37, 15),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.Tital}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  '  ${widget.des}',
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),
                 
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // إجراء عند النقر على الزر
                  },
                  child: Text(
                    'Buy now',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/pizza${widget.imgName}.png'),
          ],
        ));
  }
}
