import 'package:explore/data/events_screen_data.dart';
import 'package:flutter/material.dart';


class EventCard extends StatelessWidget {
  
  final String imageUrl;

  EventCard(this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.purple,
         margin: EdgeInsets.all(10.0),
         child: SizedBox(
          
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width ,
        child: Image.network(imageUrl ,
        fit: BoxFit.cover,
         )
      ),
      )
    );
  }
}