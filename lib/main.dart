import 'package:flutter/material.dart';
import 'package:travelkuy/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TravelKuy',
        home: HomeScreen(),
    );
  }
}
