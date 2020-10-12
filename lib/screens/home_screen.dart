import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:travelkuy/widgets/bottom_navigation_travelkuy.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting Up AppBar
      appBar: AppBar(
        backgroundColor: mBackgroundColour,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      // Setting up Background Color
      backgroundColor: mBackgroundColour,

      bottomNavigationBar: BottomNavigationTravelkuy(),

    );
  }
}