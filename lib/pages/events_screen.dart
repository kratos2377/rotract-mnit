import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore/data/events_screen_data.dart';
import 'package:explore/unique_widgets/events_card.dart';
import 'package:flutter/material.dart';


class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: event_data.map((data) {
        return EventCard(data);
      }).toList(), 
    options: CarouselOptions(
      height: MediaQuery.of(context).size.height * 0.9,
      autoPlay: true,
      reverse: false,
       autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      scrollDirection: Axis.horizontal,
    )
    );
  }
}