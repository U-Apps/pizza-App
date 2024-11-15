import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        title: Text('تسجيل جديد'), // يمكنك تغيير العنوان هنا
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'First time?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'User Name',
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'PassWord',
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  padding: EdgeInsets.only(
                      left: 100, top: 15, right: 100, bottom: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                // هنا يمكنك إضافة منطق التسجيل (مثال: التحقق من البيانات، إرسالها إلى الخادم)
                print('تم النقر على زر التسجيل');
              },
              child: Text('SignUP'),
            ),
            SizedBox(height: 16),
            Text(
              '____ Or sign Up with ____',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // أزرار تسجيل الدخول باستخدام Google و Facebook
                Column(
                  children: <Widget>[
                    IconButton(onPressed: () => {}, icon: Icon(Icons.shop_2)),
                    Text('Google')
                  ],
                ),

                Column(
                  children: <Widget>[
                    IconButton(onPressed: () => {}, icon: Icon(Icons.shop_2)),
                    Text('Google')
                  ],
                ),

                // يمكنك استخدام حزم خارجية مثل flutter_login
              ],
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // الانتقال إلى صفحة تسجيل الدخول
                // Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Already a user? Login',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
