import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  State<SplashScren> createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('home');
    });
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 300,),
          Center(
            child: Container(
              height: 360,
              child: Image.asset('assets/img/logo.png',fit: BoxFit.fitHeight,),
            ),
          ),
          Spacer(),
          LinearProgressIndicator(
            minHeight: 5,
            color: Colors.amberAccent,

          ),
        ],
      ),
    );
  }
}
