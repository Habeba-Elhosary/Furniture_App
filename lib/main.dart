import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'Second_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        'HomePage' : (context)=> const MyHomePage(),
        'SecondPage' : (context)=> const MySecondPage(),
      },
    );
  }
}