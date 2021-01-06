import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
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
          child: Image.network("https://images.unsplash.com/photo-1533309880713-0132d7580fa8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80" ,
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
                          child: ClipOval(
                          
                            child: Image.asset(
                              "./../assets/img/home_page/dove.png" ,
                                
                               fit: BoxFit.scaleDown,),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                              child: Image.asset("../../assets/img/home_page/vines.png" , fit: BoxFit.cover,)),
                            Text("Rotract MNIT" , style: TextStyle(color: Colors.white , fontSize: MediaQuery.of(context).size.width * 0.03,)),
                             SizedBox(
                              height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                              child: Image.asset("../../assets/img/home_page/vines.png" , fit: BoxFit.cover,)),
                          ],
                        ),

                        Container(
            margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.black54,
                      child: Column(
                        children: [
                        Text("Peace begins with a smile." ,style: TextStyle(color: Colors.white , fontSize: MediaQuery.of(context).size.width * 0.03)),
                         Text("-Mother Teresa" , style: TextStyle(color: Colors.white , fontSize: MediaQuery.of(context).size.width * 0.01)),
                        ],
                      )
                    ),
                      ],
                    )
                    ),
              
              duration: Duration(milliseconds: 3000),
              curve: Curves.easeIn,
            ),
          ),) ,


     
      ],
    );
  }
}