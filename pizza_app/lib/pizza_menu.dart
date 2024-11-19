import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'models/pizza.dart';

class PizzaMenu extends StatefulWidget {
  const PizzaMenu({super.key});

  @override
  State<PizzaMenu> createState() => _PizzaMenuState();
}

class _PizzaMenuState extends State<PizzaMenu> {
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

  List<Pizza> cartItems = [];

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
      ),
      body: ListView.builder(
        itemCount: listOfPizza.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              'assets/images/pizza${listOfPizza[index].numImg}.png',
              width: 50,
            ),
            title: Text(listOfPizza[index].name),
            subtitle: Text(listOfPizza[index].des),
            trailing: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _addToCart(listOfPizza[index]),
            ),
          );
        },
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
