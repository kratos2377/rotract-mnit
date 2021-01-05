import 'package:explore/data/about_screen_data.dart';
import 'package:flutter/material.dart';

class AboutScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          child: CircleAvatar(backgroundImage: NetworkImage(Screen_2['img']) )
        ),
        Expanded(
          
          child: Text(Screen_2['text']),
        ),
      ],),
    );
  }
}