import 'package:flutter/material.dart';
import 'package:pizza_app/component/categoryPizza.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({super.key});

  @override
  State<PizzaMenu> createState() => _PizzaMenuState();
}

class pizza {
  String name, des,Price;
  int numImg;
  pizza({required this.name, required this.des, required this.numImg, required this.Price});

}

class _PizzaMenuState extends State<PizzaMenu> {
  final String value_Search = '';
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<pizza> listOfPizza = [
    pizza(name:'Margherita' , des:'A classic Italian pizza\n with tomatoes,\n .', numImg:1, Price:'\$ 20')
    ,pizza(name:'meet' , des:'A classic Italian pizza with\n tomatoes,\n .', numImg:2, Price:'\$ 10')
   , pizza(name:'Margherita' , des:'A classic Italian pizza\n with tomatoes,\n .', numImg:3, Price:'\$ 30'),
    pizza(name:'Margherita' , des:'A classic Italian pizza \nwith tomatoes,\n .', numImg:4, Price:'\$ 40')
,  pizza(name:'Margherita' , des:'A classic Italian pizza\n with tomatoes,\n.', numImg:5, Price:'\$ 50')


     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 242, 222),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search for pizza',
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
              itemCount: listOfPizza.length,
              itemBuilder: (context, index) {
                return categoryPizza(
                    NumImg:listOfPizza[index].numImg, prices:listOfPizza[index].Price, Name:listOfPizza[index].name, des:listOfPizza[index].des);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
