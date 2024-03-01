import 'dart:ui';

import 'package:flutter/material.dart' show BorderRadius, BuildContext, ButtonStyle, Center, ColorScheme, Colors, EdgeInsets, ElevatedButton, FontWeight, Icon, IconButton, Icons, InkWell, ListView, MainAxisAlignment, Material, MaterialApp, MaterialPageRoute, MaterialStateProperty, Navigator, Padding, Radius, RoundedRectangleBorder, Row, Scaffold, SizedBox, StatelessWidget, Text, TextAlign, TextStyle, ThemeData, Widget, runApp;
import 'package:untitled1/Screens/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      title: 'UI Assingment',
    );
  }
}


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [

           Text(
              "Welcome To\nPlan IT",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black, // Set text color to black
                fontWeight: FontWeight.bold, // Make text bold
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 130,
            ),

              Text(
              "My personal task management\nand planning solution ",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 130,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {return ListPage();} ));
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()));
                    },
                    child: Text("Let's get started",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 70,vertical: 25)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
                  )

                  ),
              ],
            ),

            IconButton(
                onPressed: (){},
                icon: Icon(Icons.add)
            ),

          

          ],
        ),
      ),
    );
  }
}

