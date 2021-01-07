import 'package:explore/pages/about_screen.dart';
import 'package:explore/pages/events_screen.dart';
import 'package:explore/pages/home_screen.dart';
import 'package:explore/pages_mobile/about_page/about_screen_mobile.dart';
import 'package:explore/pages_mobile/achievements_screen_mobile.dart';
import 'package:explore/pages_mobile/home_screen_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePageMobile extends StatefulWidget {
  


  // EventsScreen is for Gallery 
  @override
  _MyHomePageMobileState createState() => _MyHomePageMobileState();
}

class _MyHomePageMobileState extends State<MyHomePageMobile> {
  

  var list = ["Home","About", "Achievements", "Gallery"];

  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];

  final List<Object> _pageList = [
     HomeScreenMobile(),
     AboutScreenMobile(),
     AchievementsScreenMobile(),
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
      appBar: AppBar(),
      drawer: Drawer(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
          Column(
            children: List.generate( list.length, (index){
                          return GestureDetector(
                            onTap: (){
                              _scrollToIndex(index);
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              child:  Text(
                                  list[index] , style: TextStyle(fontSize: 15)
                                ),
                              ),
                            
                          );
                        }),    
          ),

          
                  Column(
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
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/2,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(gradient: LinearGradient(colors: [
                                  Colors.orange,
                                  Colors.orangeAccent,
                                  Colors.deepOrangeAccent
                                ])),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                      Center(
                                          child: Text("Contact Us" , textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.05 , color: Colors.white),
                                          ),
                                        ),
                                    
                                  ],
                                ),
                              ),
                             Expanded(
                               child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              child: Icon( MdiIcons.instagram,
                                              size: MediaQuery.of(context).size.width * 0.1,
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
                                              size: MediaQuery.of(context).size.width * 0.1,
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
                                              size: MediaQuery.of(context).size.width * 0.1,
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


              //SubScribe Button
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
                        width: double.infinity ,
                        height: MediaQuery.of(context).size.height /2 ,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                                Colors.lightBlue,
                                Colors.blueAccent,
                                Colors.blue
                              ])),
                              child: Center(
                                child: Text("Subscribe to our mailing List" , textAlign: TextAlign.center,
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width *0.05 , color: Colors.white),
                                ),
                              )),
                            Expanded(child: Container(
                              margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height *0.05 , 0, 0),
                              child: Scaffold(
                                body: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width:  double.infinity,
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
                                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,)
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
      body: SafeArea(
        child: Column(
        children: [
            Expanded(
              child : PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                controller: controller,
                children: List.generate(list.length, (index){
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height:  MediaQuery.of(context).size.height,
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