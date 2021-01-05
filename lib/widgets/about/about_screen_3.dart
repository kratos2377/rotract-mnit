import 'package:explore/data/about_screen_data.dart';
import 'package:explore/unique_widgets/about_screen_3_card.dart';
import 'package:flutter/material.dart';

class AboutScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(30),
      child: GridView.builder(
        
        itemCount: Screen_3.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 350,
        
          childAspectRatio: 2.0,
          crossAxisSpacing: 200,
          mainAxisSpacing: 50,
      ),
      itemBuilder: (context  , index) => AboutScreenCard( Screen_3[index]['img'], Screen_3[index]['quote'],
       Screen_3[index]['name']),
      ),
    );
  }
}