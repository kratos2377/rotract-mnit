import 'package:explore/home_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MainPage());
}


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: MyHomePage(),
     )
    );
  }
}

