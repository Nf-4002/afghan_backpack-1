import 'package:afghan_backpack/constants.dart';

import 'package:afghan_backpack/splashScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Afghan BackPack',
      theme: ThemeData(
        primaryColor: kBlueColor,
        scaffoldBackgroundColor: kLighterShadeForBackground,
        appBarTheme: AppBarTheme(
          backgroundColor: kDarkBlueGreyColor,
          elevation: 4,
        ),
      ),
      home: const Splashscreen(),
    );
  }
}