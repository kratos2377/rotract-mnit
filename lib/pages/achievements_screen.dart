import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/data/achievement_screen_data.dart';
import 'package:explore/unique_widgets/achievement_screen_card.dart';
import 'package:flutter/material.dart';


class AchievementsScreen extends StatefulWidget {
  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: CarouselSlider.builder(itemCount: achievement_data.length,
       itemBuilder: (context , index) => AchievementCard(achievement_data[index]['img'] , 
       achievement_data[index]['name'] , achievement_data[index]['desc']   ), 
       options: CarouselOptions(
           aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
       ),)
    );
  }
}