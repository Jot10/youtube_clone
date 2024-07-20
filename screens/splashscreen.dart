import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube_1/pages/navscreen.dart';

//import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottomnavigation(),));

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Center(
            child: Container(
             // duration: Duration(seconds: 3),
              
              height: 100,
              width: 100,
              child: Image.asset('assets/Youtubesplash.png'),
            ),
          ),
         ],
       ),
    );
  }
}