import 'package:explore/data/about_screen_data.dart';
import 'package:flutter/material.dart';

class AboutScreenMobile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
        Container(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.4,
            child: CircleAvatar(backgroundImage: NetworkImage(Screen_1['img']) )
          ),
        ),
        Expanded(
          
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Text(Screen_1['text'])),
        ),
      ],),
    );
  }
}