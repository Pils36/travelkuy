import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedindex = 0;
  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColour,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5))
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedindex == 0
                ? new SvgPicture.asset('assets/icons/home.svg')
                : new SvgPicture.asset('assets/icons/home_colored.svg'),
            title: Text(
              'Home',
              style: bottomTextStyle,
            ),
          ),
          BottomNavigationBarItem(
            icon: _selectedindex == 1
                ? new SvgPicture.asset('assets/icons/home.svg')
                : new SvgPicture.asset('assets/icons/home_colored.svg'),
            title: Text(
              'Home',
              style: bottomTextStyle,
            ),
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: mBlueColour,
        unselectedItemColor: mSubtitleColour,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
