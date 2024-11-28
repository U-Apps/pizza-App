import 'package:flutter/material.dart';
import 'models/pizza.dart';

class CartScreen extends StatefulWidget {
  final List<Pizza> cartItems;

  CartScreen({required this.cartItems});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeItem(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  double _calculateTotalPrice() {
    double total = 0;
    for (var item in widget.cartItems) {
      total += double.parse(item.price.replaceAll('\$', '').trim());
    }
    return total;
  }

  void _showPaymentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invoice'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total items: ${widget.cartItems.length}'),
              Text(
                  'Total price: \$${_calculateTotalPrice().toStringAsFixed(2)}'),
              SizedBox(height: 20),
              Text('Thank you for shopping with us!'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.cartItems.clear();
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Payment completed successfully!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5ECD7),
      appBar: AppBar(
        backgroundColor: Color(0xFFE94532),
        elevation: 0,
        title: Text('Cart', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: widget.cartItems.isEmpty
          ? Center(
              child: Text(
                'No items in the cart',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/pizza${widget.cartItems[index].numImg}.png',
                      width: 50,
                    ),
                    title: Text(
                      widget.cartItems[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(widget.cartItems[index].price),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        _removeItem(index);
                      },
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFE94532),
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: widget.cartItems.isEmpty ? null : _showPaymentDialog,
          child: Text(
            'Proceed to Checkout',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
