import 'package:bloc/bloc.dart';
import 'package:ecomerce/MyHomescreen/MyHomescreen.dart';
import 'package:ecomerce/loginscreen/loginscreen.dart';
import 'package:ecomerce/registerscreen/registerscreen.dart';
import 'package:ecomerce/splashscreen.dart';
import 'package:flutter/material.dart';

import 'Payment/bloc_observe.dart';
import 'Payment/models/Apidata.dart';
import 'Payment/screens/Homepage/Homepage.dart';
import 'Payment/screens/pay/payscreen.dart';

void main() {
  Diohelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color:Colors.transparent,elevation: 0),
        primaryColor: Color(0xFF004182),
              scaffoldBackgroundColor: Color(0xFF004182)
      ),
      routes: {
        Splashsceen.RoutName:(context) => Splashsceen(),
        loginscreen.RoutName:(context) => loginscreen(),
        Registerscreen.RoutName:(context) => Registerscreen(),
        MyHomescreen.routname:(context) => MyHomescreen(),
        Homepage.routname:(context) => Homepage(),
        payscreen.routname:(context) => payscreen(),
      },
      initialRoute: Splashsceen.RoutName,
    );
  }


}
