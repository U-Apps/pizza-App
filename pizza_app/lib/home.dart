import 'package:flutter/material.dart';
import 'package:pizza_app/Profile.dart';
import 'package:pizza_app/models/accountDate.dart';
import 'pizza_menu.dart';
import 'package:pizza_app/component/PizzaShows.dart';
import 'package:pizza_app/component/PizzaCards.dart';
import 'models/pizza.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
 
  

  // الشاشات الثلاث
 List<Widget> _screens = [
    HomeScreen(),
    PizzaMenu(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Pizza> listOfPizza = [
    Pizza(
        name: 'Margherita',
        des: 'A classic Italian pizza\n with tomatoes,',
        numImg: 2,
        price: '\$20'),
    Pizza(
        name: 'Meat Feast',
        des: 'Loaded with meats\n and toppings.',
        numImg: 3,
        price: '\$30'),
    Pizza(
        name: 'Veggie Delight',
        des: 'Fresh veggies with\n special sauce.',
        numImg: 4,
        price: '\$40'),
    Pizza(
        name: 'Spicy Diablo',
        des: 'Spicy sauce with\n hot peppers.',
        numImg: 1,
        price: '\$50'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 90),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: const <Widget>[
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
                  ),
                ],
              ),
              Image.asset(
                'assets/images/object.png',
                width: 120,
                height: 120,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Pizzashows(
                  Tital: listOfPizza[index].name,
                  des: listOfPizza[index].des,
                  imgName: 1,
                );
              },
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(5),
                hintText: 'Search for Pizza',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.clear),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfPizza.length,
              itemBuilder: (context, index) {
                return Pizzacards(
                  tital: listOfPizza[index].name,
                  des: listOfPizza[index].des,
                  imgNum: listOfPizza[index].numImg,
                  price: listOfPizza[index].price,
                );
              },
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
