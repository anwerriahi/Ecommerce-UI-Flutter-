import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //   the root of application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce UI 1',
      home: MyHomePage(),
    );
  }
}
