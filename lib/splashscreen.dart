import 'dart:async';

import 'package:ecomerce/loginscreen/loginscreen.dart';
import 'package:ecomerce/registerscreen/registerscreen.dart';
import 'package:flutter/material.dart';

class Splashsceen extends StatelessWidget {
  static String RoutName='splash';
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context,loginscreen.RoutName);
    },);
    return Scaffold(
      body: Image.asset('assets/images/SplashScreen.png',width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
    );
  }
}
