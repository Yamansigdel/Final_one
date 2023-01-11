import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sagarmatha_project/pages/home.dart';

import 'package:sagarmatha_project/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(80, 120, 0, 0),
          child: Column(
            children: [
              Image.asset('images/mountainelogo 3.png'),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.more_horiz_outlined,
                size: 60,
                color: Color.fromARGB(255, 25, 116, 191),
              ),
              Text(
                'Loading',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),

        // child: ListView(
        //   padding: EdgeInsets.symmetric(
        //     vertical: 150,
        //     horizontal: 50,
        //   ),
        //   children: [
        //     Image.asset(
        //       'images/mountainelogo 3.png',
        //       width: 147,
        //       height: 135,
        //     ),
        //     SizedBox(
        //       height: 30,
        //     ),

        //     SizedBox(
        //       height: 30,
        //     ),
        //     Center(
        //       child: Text(
        //         'Loading',
        //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        //       ),
        //     )
        //   ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
