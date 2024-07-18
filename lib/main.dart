import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce/pages/home_page.dart';
import 'package:sneaker_ecommerce/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        "/home": (context) => HomePage(),
      },
    );
  }
}
