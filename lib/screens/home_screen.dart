import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:travelkuy/constants/style_constant.dart';
import 'package:travelkuy/models/carousel_model.dart';
import 'package:travelkuy/models/popular_destination_model.dart';
import 'package:travelkuy/models/travlog_model.dart';
import 'package:travelkuy/widgets/bottom_navigation_travelkuy.dart';
import 'package:flutter/src/rendering/box.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];

    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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

      // Setting up Bottom Navigation
      bottomNavigationBar: BottomNavigationTravelkuy(),

      // Setting up Body
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            // Promo Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 24),
              child: Text(
                'Hi Adebambo 👋 This Promo is for You!',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(
                                  carousels[index].image,
                                ),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: map<Widget>(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _current == index
                                    ? mBlueColour
                                    : mGreyColour),
                          );
                        }),
                      ),

                      // More
                      Text('More...', style: mMoreDiscountStyle),
                    ],
                  ),
                ],
              ),
            ),

            // Service Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Let\'s Booking',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 8),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColour,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColour, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.flight,
                                color: mBlueColour,
                                size: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Flight',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Feel Freedom',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 8),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColour,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColour, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.train,
                                color: mBlueColour,
                                size: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Trains',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Subway Lite',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 8),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColour,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColour, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.business,
                                color: mBlueColour,
                                size: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Hotels',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Let\'s take a break',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 8),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColour,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderColour, width: 1)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_car,
                                color: mBlueColour,
                                size: 40.0,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Car Rental',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Around the city',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Popular Destination Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Popular Destinations!',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                itemCount: populars.length,
                padding: EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColour, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              populars[index].image,
                              height: 74,
                            ),
                            Text(
                              populars[index].name,
                              style: mPopularDestinationTitleStyle,
                            ),
                            Text(
                              populars[index].country,
                              style: mPopularSubtitleStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Travlog Section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Travlog!',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 181,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                itemCount: travlogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 104,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(travlogs[index].image),
                                      fit: BoxFit.cover),
                                  gradient: LinearGradient(
                                    colors: [
                                      mCardGradientColour,
                                      mSubtitleColour
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: Text(
                                "Travlog " + travlogs[index].name,
                                style: mTravlogTitleStyle,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogs[index].content,
                          maxLines: 3,
                          style: mTravlogContentStyle,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogs[index].place,
                          style: mTravlogPlaceStyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
