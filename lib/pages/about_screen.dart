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
    AboutScreen3(),
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

        CarouselSlider.builder(itemCount: _pageLoading.length, 
        itemBuilder: (BuildContext context , int index) => Container(
          height: double.infinity,
          width: double.infinity,
          child: _pageLoading[index],
        ), options:  CarouselOptions(
                 height: double.infinity,

          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
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