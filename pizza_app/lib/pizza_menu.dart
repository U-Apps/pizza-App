import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'models/pizza.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({super.key});

  @override
  State<PizzaMenu> createState() => _PizzaMenuState();
}

class _PizzaMenuState extends State<PizzaMenu> {
  List<Pizza> filteredPizzaList = [];
  List<Pizza> cartItems = [];

  @override
  void initState() {
    super.initState();
    filteredPizzaList = listOfPizza;
  }

  void _filterPizzas(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredPizzaList = listOfPizza;
      } else {
        filteredPizzaList = listOfPizza
            .where((pizza) =>
                pizza.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _addToCart(Pizza pizza) {
    setState(() {
      cartItems.add(pizza);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 242, 222),
      appBar: AppBar(
        title: Text('Pizza Menu'),
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterPizzas,
              decoration: InputDecoration(
                labelText: 'Search Pizza',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPizzaList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    'assets/images/pizza${filteredPizzaList[index].numImg}.png',
                    width: 50,
                  ),
                  title: Text(filteredPizzaList[index].name),
                  subtitle: Text(filteredPizzaList[index].des),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => _addToCart(filteredPizzaList[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(cartItems: cartItems),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.red,
      ),
    );
  }
}
