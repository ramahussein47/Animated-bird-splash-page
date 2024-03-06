import 'dart:async';

import 'package:animation/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
runApp(MaterialApp(
      routes: {
      '/':(context) =>const SplashScreen(),
       '/MyApp':(context) => MyApp(),
      },
));
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  _startTimer(){
      var duration=const Duration(seconds: 2);
      return Timer(duration, route);

  }
  route(){
    () {
        Navigator.pushReplacementNamed(context, '/MyApp');
       };
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedSplashScreen(
        splash: Column(

          children: [
            Center(child: LottieBuilder.network('https://lottie.host/fd4f659c-71dd-4986-92f0-dd5837acfd2b/buZ4kJ9vCF.json')),
          ],

      ), nextScreen: MyApp(),
      splashIconSize: 500,
         backgroundColor: const Color.fromARGB(255, 107, 159, 248),),
    );
  }
}
