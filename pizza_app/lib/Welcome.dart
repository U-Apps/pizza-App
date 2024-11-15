import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'LoginScreen.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
return AnimatedSplashScreen(
      splash: Image.asset('assets/images/logo.png',width:10000,height: 100000,),
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 4000,
      splashIconSize: 400,
    );
  }
}


  
