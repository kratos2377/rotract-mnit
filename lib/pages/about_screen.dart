import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/widgets/about/about_screen_1.dart';
import 'package:explore/widgets/about/about_screen_2.dart';
import 'package:explore/widgets/about/about_screen_3.dart';
import 'package:flutter/material.dart';


class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  final List<Object> _pageLoading = [
    AboutScreen1(),
    AboutScreen2(),
    AboutScreen3()
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider.builder(itemCount: _pageLoading.length, 
      itemBuilder: (BuildContext context , int index) => Container(
        height: double.infinity,
        width: double.infinity,
        child: _pageLoading[index],
      ), options:  CarouselOptions(
        height: 600,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 8),
        autoPlayAnimationDuration: Duration(milliseconds: 1000),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
   )
   ),
    );
  }
}