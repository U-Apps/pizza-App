import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CartItem(
              imagePath: 'assets/images/pizza.png',
              itemName: 'BBQ Chicken',
              price: 53,
              time: '20 Mins',
            ),
            CartItem(
              imagePath: 'assets/images/pizza.png',
              itemName: 'Crust&Co',
              price: 45,
              time: '20 Mins',
            ),
            CartItem(
              imagePath: 'assets/images/pizza.png',
              itemName: 'Spicy Diablo',
              price: 62,
              time: '20 Mins',
            ),
            DeliveryLocationCard(),
            OrderSummary(),
            PayButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CartItem extends StatelessWidget {
  final String imagePath;
  final String itemName;
  final int price;
  final String time;

  const CartItem({
    required this.imagePath,
    required this.itemName,
    required this.price,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath, width: 80, height: 80),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFFE94532),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(time, style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('\$$price',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {},
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove, color: Colors.white),
                      onPressed: () {},
                      color: Color(0xFFE94532),
                    ),
                    Text('1', style: TextStyle(fontSize: 16)),
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () {},
                      color: Color(0xFFE94532),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryLocationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery-Location',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFFE94532),
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on, color: Color(0xFFE94532)),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'F-7, Ohio Complex, Bopal',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Text('30 Mins', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total', style: TextStyle(fontSize: 16)),
              Text('\$200', style: TextStyle(fontSize: 16)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Taxes & Charges', style: TextStyle(fontSize: 16)),
              Text('\$40', style: TextStyle(fontSize: 16)),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFFE94532),
                ),
              ),
              Text(
                '\$240',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFFE94532),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFE94532),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          'Pay Now',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Color(0xFFE94532)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.grey),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: Colors.grey),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.grey),
          label: '',
        ),
      ],
    );
  }
}
