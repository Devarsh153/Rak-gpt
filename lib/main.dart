import 'package:flutter/material.dart';

import 'package:mybotgpt/Screens/Splash.dart';
import 'package:mybotgpt/Shared/Constant.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Constants().primaryColor),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
