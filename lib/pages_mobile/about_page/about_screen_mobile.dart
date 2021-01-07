import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/pages_mobile/about_page/about_screen_1_mobile.dart';
import 'package:explore/pages_mobile/about_page/about_screen_2_mobile.dart';
import 'package:explore/pages_mobile/about_page/about_screen_3_mobile.dart';
import 'package:explore/pages_mobile/about_page/about_screen_4_mobile.dart';
import 'package:explore/widgets/about/about_screen_1.dart';
import 'package:explore/widgets/about/about_screen_2.dart';
import 'package:explore/widgets/about/about_screen_3.dart';
import 'package:flutter/material.dart';


class AboutScreenMobile extends StatefulWidget {
  @override
  _AboutScreenMobileState createState() => _AboutScreenMobileState();
}

class _AboutScreenMobileState extends State<AboutScreenMobile> {

  final List<Object> _pageLoading = [
    AboutScreenMobile1(),
    AboutScreenMobile2(),
    AboutScreenMobile3(),
    AboutScreenMobile4(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
         Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Image.network("https://images.unsplash.com/photo-1503455637927-730bce8583c0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
             fit: BoxFit.cover,),

         ),

         Container(
             height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           color: Colors.black54,
         ),

        
        CarouselSlider(
        items: _pageLoading.map((item)  {
          return Container(
            height: double.infinity,
            width: double.infinity,
            child: item
          );
        }).toList() ,
         options:  CarouselOptions( height: double.infinity,

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
      ]
    );
  }
}