import 'package:explore/data/about_screen_data.dart';
import 'package:flutter/material.dart';


class AboutScreenCard extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String quote;

  AboutScreenCard(this.imgUrl , this.quote , this.name);

  @override
  _AboutScreenCardState createState() => _AboutScreenCardState();
}

class _AboutScreenCardState extends State<AboutScreenCard> {
  @override
  Widget build(BuildContext context) {
    return GridTileBar(
      leading: SizedBox(height: MediaQuery.of(context).size.height * 0.2, 
      width: MediaQuery.of(context).size.width * 0.2,
      child: CircleAvatar(backgroundImage: NetworkImage(widget.imgUrl), 
      backgroundColor: Colors.transparent),
      
      ),
      title: Text(widget.quote),
      subtitle: Text(widget.name),
    );
  }
}