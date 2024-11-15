import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400], // لون الخلفية الأحمر
      body: Center(
        child: SingleChildScrollView(
          padding:EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PIZZAR',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Savor the slice',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
             foregroundColor:Colors.red,
             textStyle:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),
                padding: EdgeInsets.only(left: 100,top:15,right: 100,bottom: 15 ),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                  
                )
              )
  

               ,
                onPressed: () {
                  // هنا يمكنك إضافة منطق تسجيل الدخول
                },
                child: Text('LOGIN'),
              ),
                SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  // هنا يمكنك إضافة منطق نسيان كلمة المرور
                },

                child: Text('Forgot Password',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.white,fontSize: 16),),
              ),
             
              Text('_________ OR __________',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: () {
                  // هنا يمكنك إضافة منطق التسجيل
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
    );
  }
}
