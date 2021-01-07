import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/data/achievement_screen_data.dart';
import 'package:explore/unique_widgets/achievement_screen_card_mobile.dart';
import 'package:flutter/material.dart';


class AchievementsScreenMobile extends StatefulWidget {
  @override
  _AchievementsScreenMobileState createState() => _AchievementsScreenMobileState();
}

class _AchievementsScreenMobileState extends State<AchievementsScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
       items: achievement_data.map((item)  {
         return Container(
           child: AchievementCardMobile(item['img'], 
       item['name'], item['desc'] ),
         );
       }).toList(),
       options: CarouselOptions(
         height: MediaQuery.of(context).size.height * 0.9,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
       ),
    );
  }
}