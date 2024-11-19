import 'package:flutter/material.dart';
import 'package:pizza_app/component/ShowDailog.dart';
import 'package:pizza_app/successfulLogin.dart';
import 'Register.dart';

class ForgetPassWordScreen extends StatefulWidget {
  const ForgetPassWordScreen({super.key});

  @override
  State<ForgetPassWordScreen> createState() => _ForgetPassWordScreenState();
}

class _ForgetPassWordScreenState extends State<ForgetPassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نسيت كلمة المرور؟'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // هنا يمكنك إضافة منطق للعودة إلى الشاشة السابقة
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.red[400],
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(25),
                  labelText: 'البريد الإلكتروني/رقم الهاتف',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.white,
                  filled: true,
                  labelStyle: TextStyle(color: Colors.black),
                ),
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
                   Showdialog(content: 'تم ارسال رساله التحقق\n الئ رقم جوالك', icon:Icon(Icons.abc_outlined));

                  // هنا يمكنك إضافة منطق لإرسال رمز التحقق
                },
                child: Text('إرسال رمز التحقق'),
              ),
              SizedBox(height: 20),
              // لوحة المفاتيح الرقمية (يمكنك استخدام حزمة خارجية لتخصيصها بشكل أكبر)
            ],
          ),
        ),
      ),
    );
  }
}
