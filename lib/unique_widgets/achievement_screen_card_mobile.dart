import 'package:flutter/material.dart';
import 'package:flutter_cursor/flutter_cursor.dart';
import 'package:flutter/rendering.dart';


class AchievementCardMobile extends StatefulWidget {
 
 final String imgUrl;
 final String name;
 final String desc;

 AchievementCardMobile(this.imgUrl , this.name , this.desc);


  @override
  _AchievementCardMobileState createState() => _AchievementCardMobileState();
}

class _AchievementCardMobileState extends State<AchievementCardMobile> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          height: MediaQuery.of(context).size.height* 0.8,
          width: MediaQuery.of(context).size.width* 0.8,
          child:  Card(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
               elevation: 4,
               margin: EdgeInsets.all(5),
               child: HoverCursor(
                 cursor: Cursor.progress,
                 child: Column(
                   children: <Widget>[
                     ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                         ),
                         child: Image.network(widget.imgUrl , height: MediaQuery.of(context).size.height * 0.55 , width: MediaQuery.of(context).size.width  ,
                         fit: BoxFit.cover),
                      ),
                     Divider(thickness: 3.0, color: Colors.black54,),
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