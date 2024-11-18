import 'package:flutter/material.dart';
import 'package:pizza_app/home.dart';
import 'package:pizza_app/pizza_menu.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  String username = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromRGBO(239, 83, 80, 1), // لون الخلفية الأحمر
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //                 'PIZZAR',
                //                 style: TextStyle(
                //                   fontSize: 40,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.white,
                //                 ),
                //               ),
                Image.asset('assets/images/logo1.png'),

                // Text(
                //   'Savor the slice',
                //   style: TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
                SizedBox(height: 10),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ' UserName',
                    labelStyle: TextStyle(color: Colors.black),
                    errorStyle:
                        TextStyle(color: Color.fromARGB(255, 242, 242, 242)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter email address';
                    }
                    if (value!.length < 8) {
                      return 'Password should be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }
                    if (value.length < 4) {
                      return 'Password length is short';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

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
                    if (_formKey.currentState!.validate()) {
                      // إذا كانت البيانات صحيحة، قم بإجراء ما تريد
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                      // هنا يمكنك إضافة منطق تسجيل الدخول
                    }
                  },
                  child: Text('LOGIN'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    // هنا يمكنك إضافة منطق نسيان كلمة المرور
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 16),
                  ),
                ),

                Text(
                  '_________ OR __________',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    // هنا يمكنك إضافة منطق التسجيل
                    Navigator.pushNamed(context, 'Regitered');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.red,
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      padding: EdgeInsets.only(
                          left: 100, top: 15, right: 100, bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text('SIGN UP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
