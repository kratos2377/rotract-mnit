import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width ,
          child: Image.network("http://www.mnit.ac.in/prospective_student/images/Photo_Gallery/MNITInfrastructurePhotos19/images/mnit_infrastructure_photos_5.jpg" ,
           fit: BoxFit.cover,),
        ),
         
         Positioned(child: Container(
          color: Colors.black54,
           height: MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width ,
         )),

       Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
          child: Center(
            child: FadeIn(
              child: Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: CircleAvatar(
                            child: Image.network("https://upload.wikimedia.org/wikipedia/en/b/b7/Mnit_logo.png" , fit: BoxFit.cover,),
                          ),
                        ),
                        Text("Rotract MNIT" , style: TextStyle(color: Colors.white , fontSize: 35),),
                      ],
                    )
                    ),
              
              duration: Duration(milliseconds: 3000),
              curve: Curves.easeIn,
            ),
          ),) ,


        Positioned(child: FadeIn(
          duration: Duration(milliseconds: 5000),
          curve: Curves.easeIn,
          child: Container(
            margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.black54,
                      child: Column(
                        children: [
                        Text("Peace begins with a smile." ,style: TextStyle(color: Colors.white , fontSize: 35)),
                         Text("-Mother Teresa" , style: TextStyle(color: Colors.white , fontSize: 25)),
                        ],
                      )
                    ),
        ),
                left: MediaQuery.of(context).size.width /2  ,
        top: MediaQuery.of(context).size.height/2 + 30 , 
        )
      ],
    );
  }
}