import 'package:flutter/material.dart';
import 'package:flutter_cursor/flutter_cursor.dart';
import 'package:flutter/rendering.dart';


class AchievementCard extends StatefulWidget {
 
 final String imgUrl;
 final String name;
 final String desc;

 AchievementCard(this.imgUrl , this.name , this.desc);


  @override
  _AchievementCardState createState() => _AchievementCardState();
}

class _AchievementCardState extends State<AchievementCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.9,
          child:  Card(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
               elevation: 4,
               margin: EdgeInsets.all(5),
               child: HoverCursor(
                 cursor: Cursor.progress,
                 child: Row(
                   children: <Widget>[
                     ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                         ),
                         child: Image.network(widget.imgUrl , height: MediaQuery.of(context).size.height  , width: MediaQuery.of(context).size.width * 0.4  ,
                         fit: BoxFit.cover),
                      ),
                     VerticalDivider(width: MediaQuery.of(context).size.width * 0.05, indent: MediaQuery.of(context).size.height /4 ,
                      endIndent: MediaQuery.of(context).size.height / 4 ,  thickness: 3.0, color: Colors.black54,),
                      Expanded(
                        child: Column(
                          children: [
                            Text(widget.name),
                          ],
                        ),
                      )
                   ],
                 ),
               ),
            ),
                );
  }
}