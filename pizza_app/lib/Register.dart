import 'package:flutter/material.dart';
import 'package:pizza_app/component/message.dart';
import 'package:pizza_app/models/accountDate.dart';
// import 'package:pizza_app/models/loginaccount.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _email = TextEditingController();
  bool _issecurityPassWord = true;
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('New account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'First time?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextFormField(
                  controller: _username,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.account_circle),
                    labelText: 'UserName',
                    labelStyle: TextStyle(color: Colors.black),
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _username.text = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'UserName is empty';
                    }
                    return null;
                  }),
              SizedBox(height: 16),
              TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.black),
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email.text = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email is empty';
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                            caseSensitive: false)
                        .hasMatch(value)) {
                      return 'please insert a correct email';
                    }
                    return null;
                  }),
              SizedBox(height: 16),
              TextFormField(
                  controller: _password,
                  obscureText: _issecurityPassWord,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: togglePassWord(),
                    labelText: 'PassWord',
                    labelStyle: TextStyle(color: Colors.black),
                    errorStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password.text = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'PassWord is empty';
                    } else if (value.length < 4) {
                      return 'the password should be bigger then 4';
                    }
                    return null;
                  }),
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
                  print('The registration button has been clicked');
                  if (_formKey.currentState!.validate()) {
                    // showSuccessDialog(context);
                    final Message message = Message();

                    message.showSuccessDialog(
                        context,
                        'A new account has been created',
                        Icon(Icons.join_right),
                        'login');

                    final acc = accountData(
                        userName: _username.text,
                        passWord: _password.text,
                        Email: _email.text);
                    users.add(acc);
                  }
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
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.white,
                          )),
                      Text(
                        'Facebook',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon: Icon(
                            Icons.tiktok,
                            color: Colors.white,
                          )),
                      Text(
                        'Tiktok',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text(
                  'Already a user? Login',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget togglePassWord() {
    return IconButton(
      onPressed: () {
        setState(() {
          _issecurityPassWord = !_issecurityPassWord;
        });
      },
      icon: _issecurityPassWord
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
