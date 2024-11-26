import 'dart:math';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/cart_screen.dart';
import '../models/pizza.dart';

class Pizzacards extends StatefulWidget {
  final String tital, des, price;
  final int imgNum;
  final double rate;

  const Pizzacards(
      {super.key,
      required this.tital,
      required this.des,
      required this.imgNum,
      required this.price,
      required this.rate});

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
                      color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  '${widget.des}',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                SizedBox(height: 25),
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

                    RatingStars(
                      axis: Axis.horizontal,
                      value: widget.rate,
                      onValueChanged: (v) {
                        //
                        setState(() {
                          double rate = widget.rate;
                          rate = v;
                        });
                      },
                      starCount: 4,
                      starSize: 12.5,
                      valueLabelColor: const Color(0xff9b9b9b),
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 8.0),
                      valueLabelRadius: 10,
                      maxValue: 4,
                      starSpacing: 1,
                      maxValueVisibility: true,
                      valueLabelVisibility: true,
                      animationDuration: Duration(milliseconds: 1000),
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xffe7e8ea),
                      starColor: Colors.yellow,
                      angle: 12,
                    ),

                    // value: widget.rate,
                    // onRated: (rating) {
                    //   widget.rate = rating;
                    // },
                    // starsCount:5,
                    // size:20,
                    // color:Colors.amber
                    // starShap:StarShap.polygon

                    // )

                    // IconButton(
                    //       onPressed: () =>{},

                    //       icon: Icon(
                    //         Icons.star_purple500_sharp
                    //         ,grade: 10,
                    //         color: Colors.amber,
                    //       )),

                    // Container(

                    //   child:Icon(Icons.abc)
                    //   )
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
