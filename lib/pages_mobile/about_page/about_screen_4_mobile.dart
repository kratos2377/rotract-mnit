import 'package:explore/data/about_screen_data.dart';
import 'package:explore/unique_widgets/about_screen_3_card.dart';
import 'package:flutter/material.dart';

class AboutScreenMobile4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AboutScreenCard( Screen_3[2]['img'], Screen_3[2]['quote'],
       Screen_3[2]['name']),
       AboutScreenCard( Screen_3[3]['img'], Screen_3[3]['quote'],
       Screen_3[3]['name']),
        ],
      ),
    );
  }
}