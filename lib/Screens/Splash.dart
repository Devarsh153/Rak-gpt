import 'package:flutter/material.dart';
import 'package:mybotgpt/Helper/NaviagtionHelper.dart';
import 'package:mybotgpt/Screens/Intro1Screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      nextScreenReplace(context, Intro1Screen());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/bot3.png',
        ),
      ),
    );
  }
}
