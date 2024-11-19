import 'package:flutter/material.dart';

class Pizzacards extends StatefulWidget {
  final String tital, des,price;
  final int imgNum;
  const Pizzacards({super.key,required this.tital,required this.des,required this.imgNum,required this.price});

  @override
  State<Pizzacards> createState() => _PizzacardsState();
}

class _PizzacardsState extends State<Pizzacards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), // يمكنك تعديل قيمة الدائرة
      ),
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [

          //     SizedBox(),
          //     // مسافة فارغة
          //     Icon(Icons.favorite, color: Colors.white),
          //   ],
          // ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pizza${widget.imgNum}.png',
                  width: 100,
                  height: 100,
                ),
                Text(
                  '${widget.tital}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '${widget.des}',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${widget.price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
