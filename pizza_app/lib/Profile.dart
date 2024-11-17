import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('images/img.jpg'), // ضع صورة هنا
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nick',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+91 7984223613',
                    style: TextStyle(fontSize: 16, color: Color(0xFFE6361D)),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                AccountOption(title: 'Privacy & Settings', icon: Icons.lock),
                AccountOption(title: 'Track Order', icon: Icons.pedal_bike),
                AccountOption(title: 'Order History', icon: Icons.history),
                AccountOption(title: 'Payment Options', icon: Icons.payment),
                AccountOption(
                    title: 'Delivery Address', icon: Icons.location_on),
                AccountOption(title: 'Favorite Order', icon: Icons.favorite),
                AccountOption(
                    title: 'Donate #SaveSoil', icon: Icons.volunteer_activism),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // تسجيل الخروج
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Color(0xFFE6361D),
                iconColor: Color(0xFFE6361D),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Color(0xFFE6361D)),
                  SizedBox(width: 10),
                  Text(
                    'Log Out',
                    style: TextStyle(fontSize: 16, color: Color(0xFFE6361D)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccountOption extends StatelessWidget {
  final String title;
  final IconData icon;

  const AccountOption({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE6361D),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
        onTap: () {
          // اضف الإجراء عند الضغط
        },
      ),
    );
  }
}
