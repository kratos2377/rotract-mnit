import 'dart:html';
import 'package:explore/pages/about_screen.dart';
import 'package:explore/pages/achievements_screen.dart';
import 'package:explore/pages/events_screen.dart';
import 'package:explore/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  


  // EventsScreen is for Gallery 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var list = ["Home","About", "Achievements", "Gallery"];

  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];

  final List<Object> _pageList = [
     HomeScreen(),
     AboutScreen(),
     AchievementsScreen(),
     EventsScreen(),
  ]; 

  PageController controller = PageController();

  final String instaUrl = "https://www.instagram.com/";

  final String fbUrl = "https://www.facebook.com/";

  final String twitterUrl = "https://twitter.com/";

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
              child: Row(
                
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Spacer(),
                  Row(
                    children:  List.generate( list.length, (index){
                      return GestureDetector(
                        onTap: (){
                          _scrollToIndex(index);
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              list[index] , style: TextStyle(fontSize: 15)
                            ),
                          ),
                        ),
                      );
                    }), 
                  ),

                  Row(
                    children: <Widget>[
                         FlatButton(
                           
              onPressed: () {
                showDialog(context: context, 
                builder: (context) {
                  return  Center(
                    
                      child: Container(
                         
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black ,
                        width: 1.0 , style: BorderStyle.solid )),
                        width: MediaQuery.of(context).size.width /2 ,
                        height: MediaQuery.of(context).size.height /2 ,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                                Colors.orange,
                                Colors.orangeAccent,
                                Colors.deepOrangeAccent
                              ])),
                              child: Center(
                                child: Text("Contact Us" , textAlign: TextAlign.center,
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.03 , color: Colors.white),
                                ),
                              )),
                            Expanded(
                                
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Icon( MdiIcons.instagram,
                                          size: MediaQuery.of(context).size.width * 0.04,
                                          ),
                                        ),
                                        FlatButton(onPressed: () async {
                                          if(await canLaunch(instaUrl)){
                                            launch(instaUrl);
                                          } else{
                                            throw "Cannot Launch URL";
                                          }
                                        }, child: Text("Instagram"))
                                      ],
                                    ),
                                    VerticalDivider(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Icon( MdiIcons.facebook,
                                          size: MediaQuery.of(context).size.width * 0.04,
                                          ),
                                        ),
                                        FlatButton(onPressed: () async {
                                          if(await canLaunch(fbUrl)){
                                            launch(fbUrl);
                                          } else{
                                            throw "Cannot Launch URL";
                                          }
                                        }, child: Text("Facebook"))
                                      ],
                                    ),
                                    VerticalDivider(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Icon( MdiIcons.twitter,
                                          size: MediaQuery.of(context).size.width * 0.04,
                                          ),
                                        ),
                                        FlatButton(onPressed: () async {
                                          if(await canLaunch(twitterUrl)){
                                            launch(twitterUrl);
                                          } else{
                                            throw "Cannot Launch URL";
                                          }
                                        }, child: Text("Twitter"))
                                      ],
                                    ),

                                  ],
                                  ),
                                ),
                              ),
                           
                            Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.bottomCenter,
                              child: Text("Subscribe to our Mailing List for all Updates."),
                            )
                          ],
                        ),
                      ),
                    );
                  
                }, 
                );
              },
              textColor: Colors.white,
              child: Container(
                decoration:  BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                    const Text('Contact Us', style: TextStyle(fontSize: 12)),
              ), 
              ),
               FlatButton(
              onPressed: () {
                 showDialog(context: context, 
                builder: (context) {
                  return  Center(
                    
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.purple,
                        width: 3.0 , style: BorderStyle.solid )),
                        width: MediaQuery.of(context).size.width /2 ,
                        height: MediaQuery.of(context).size.height /2 ,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                                Colors.lightBlue,
                                Colors.blueAccent,
                                Colors.blue
                              ])),
                              child: Center(
                                child: Text("Subscribe to our mailing List" , textAlign: TextAlign.center,
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.02 , color: Colors.white),
                                ),
                              )),
                            Expanded(child: Container(
                              margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height *0.05 , 0, 0),
                              child: Scaffold(
                                body: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width:  MediaQuery.of(context).size.width *0.5,
                                      child: TextField(
                                        decoration: InputDecoration(labelText: "Enter Your E-Mail"),
                                        controller: emailController,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.04),
                                      child: RaisedButton(
                                        color: Colors.black,
                                        onPressed: () {

                                      },
                                      child: Text("Subscribe!" , style: TextStyle(
                                      color: Colors.white , fontStyle: FontStyle.italic,
                                      fontSize: MediaQuery.of(context).size.width * 0.02
                                      ),),
                                      ),
                                    ),
                                    
                                  ],
                                  ),
                              ),
                            )),
                            Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                        Text("Welcome To Rotract-MNIT Family"),
                                        Icon(Icons.favorite , color: Colors.pink,)
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,)
                          ],
                        ),
                      ),
                    );
                  
                }, 
                );
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                
                child:
                    const Text('Subscribe', style: TextStyle(fontSize: 12)),
              ), )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child : PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                controller: controller,
                children: List.generate(list.length, (index){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: double.maxFinite,
                    color: colors[index],
                    child: Center(
                      child: _pageList[index]
                    ),
                  );
                })
              ),
            ),
          ],
        )
      ),
    );
  }

  void _scrollToIndex(int index) {
    controller.animateToPage(index , duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}