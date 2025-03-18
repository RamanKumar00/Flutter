import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/main.dart';
import 'package:splash_screen/profile_src.dart';

class SplashSrc extends StatefulWidget {
  @override
  State<SplashSrc> createState() => _SplashSrcState();
}

class _SplashSrcState extends State<SplashSrc> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'Dashboard',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Classico",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
