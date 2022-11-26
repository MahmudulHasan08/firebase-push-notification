import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pushnotification/views/homescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (_) => HomeScreen(),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: CircleAvatar(),
      ),
    );
  }
}
