import 'package:explore/home_page.dart';
import 'package:explore/home_page_mobile.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;


void main(){
  runApp(MainPage());
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
 
  bool kisweb;

  @override
    void initState() {
      // TODO: implement initState
      try{
    if(Platform.isAndroid||Platform.isIOS) {
        kisweb=false;
    } else {
        kisweb=true;
    }
} catch(e){
    kisweb=true;
}
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
   
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: Test()
    );

   
  }
}

   
class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
    body: (  screenSize <= 600) ? MyHomePageMobile() : MyHomePage(),
  ),
    );
  }
}

