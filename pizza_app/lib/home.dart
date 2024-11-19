import 'package:flutter/material.dart';
import 'package:pizza_app/component/PizzaShows.dart';
import 'component/pizzaCards.dart';

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

    return Scaffold(
      appBar: AppBar(title: Text('PIZZA'),),
      body: SingleChildScrollView(
        
        child: Column(children: <Widget>[
          SizedBox(
            height: 10,
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
              Image.asset('assets/images/object.png',width: 120,height: 120,),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
      
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Pizzashows();
                }),
          ),
          SizedBox(
            height: 6,
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
            height: 5,
          ),
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Pizzacards();
                }),
          ),
          SizedBox(
            height: 5,
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
      ),
    );
  }
}
