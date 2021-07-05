import 'package:flutter/material.dart';
import 'package:whatsapp/common/colors.dart';
import 'package:whatsapp/screen/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: ColorResource.ThemeDarkGreen,
      ),
      home: SplashScreen(),
    );
  }
}