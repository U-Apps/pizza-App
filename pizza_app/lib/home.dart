import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Online Pizza',
                  style: TextStyle(
                      color: Color.fromRGBO(230, 54, 29, 100),
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  'Delicious!',
                  style: TextStyle(
                      color: Color.fromRGBO(230, 54, 29, 100),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Image.asset('assets/images/object.png'),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: <Widget>[
            Card(
                color: Color.fromARGB(255, 209, 37, 15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '  Special Offer\n for March',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          '  We are here with the \n best pizzas in town.',
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
                    Image.asset('assets/images/pizza.png'),
                  ],
                )),
            Card(
                color: Color.fromARGB(255, 209, 37, 15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '  Special Offer\n for March',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          '  We are here with the \n best pizzas in town.',
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
                    Image.asset('assets/images/pizza.png'),
                  ],
                )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(5),
                hintText: 'Search for Pizza',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20))

                // onChanged: (value) {
                //   // ��جرا�� عند تغيير محتوى الحقل
                // },

                ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
//             Card(
//               child: Column(
//                 children: <Widget>[
//                   Image.asset(
//                     'assets/images/object.png',
//                     width: 100,
//                     height: 100,
//                   ),
//                   Text('Spicy Diablo'),
//                   Text(
//                     'Classic tomato sauce,Mozzarella\n cheese,Fresh basil leaves',
//                     style: TextStyle(fontSize: 8),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Text('20'),
//                       SizedBox(
//                         width: 20,
//                       ),

//                       ElevatedButton(
//   onPressed: () {
//     // وظيفة الزر عند الضغط عليه (مثلاً: زيادة قيمة عددية)
//   },
//   style: ElevatedButton.styleFrom(
//    backgroundColor:  Colors.black, // لون الخلفية
//     foregroundColor: Colors.white, // لون الأيقونة
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topRight: Radius.circular(0), // الزاوية العلوية اليمين مقطوعة
//         topLeft: Radius.circular(50),
//         bottomLeft: Radius.circular(50),
//         bottomRight: Radius.circular(50),
//       ),
//     ),
//   ),
//   child: Icon(Icons.add), // أيقونة الجمع
// )

//                       //  IconButton(
//                       //   color:Colors.white,
//                       //   style: ButtonStyle(

//                       //   ),
//                       //   onPressed:()=>{}, icon:Icon(Icons.add))
//                     ],
//                   )
//                 ],
//               ),
//             )
//             ,
/////

            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15), // يمكنك تعديل قيمة الدائرة
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
                          'assets/images/pizza.png',
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          'Spicy Diablo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Classic tomato sauce\n Cheese, Fresh basil leaves',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '\$62',
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
            ),
//
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15), // يمكنك تعديل قيمة الدائرة
              ),
              color: Colors.white,
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
                          'assets/images/pizza.png',
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          'Spicy Diablo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Classic tomato sauce\n Cheese, Fresh basil leaves',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '\$62',
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
                                color: Color.fromARGB(250, 255, 123, 0),
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
            ),
//
            Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15), // يمكنك تعديل قيمة الدائرة
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
                          'assets/images/pizza.png',
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          'Spicy Diablo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Classic tomato sauce\n Cheese, Fresh basil leaves',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '\$62',
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
            ),
//

            ////
          ],
        ),
        SizedBox(
          height: 10,
        ),
        BottomNavigationBar(
          backgroundColor: Colors.red,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.red,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          onTap: _onItemTapped,
        ),
      ]),
    );
  }
}
