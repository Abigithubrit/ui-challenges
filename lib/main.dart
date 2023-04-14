import 'package:app/Food/food1.dart';
import 'package:app/Hotels/hotel1.dart';
import 'package:app/Hotels/hotel2.dart';
import 'package:app/Hotels/hotel3.dart';
import 'package:app/Lists/OnBoarding/onboard3.dart';
import 'package:app/Lists/OnBoarding/onboard4.dart';
import 'package:app/Lists/OnBoarding/onboarding1.dart';
import 'package:app/Lists/gridview.dart';
import 'package:app/Lists/institutes.dart';
import 'package:app/Lists/placelist.dart';
import 'package:app/Login/Login.dart';
import 'package:app/Login/Login2.dart';
import 'package:app/Login/Login3.dart';
import 'package:app/Login/Login4.dart';
import 'package:app/Login/Login5.dart';
import 'package:app/Login/login1.dart';
import 'package:app/article/Language.dart';
import 'package:app/article/article1.dart';
import 'package:app/article/article2.dart';
import 'package:app/home/homepage.dart';
import 'package:app/pages/profile1.dart';
import 'package:app/pages/profile2.dart';
import 'package:app/pages/profile5.dart';
import 'package:app/pages/profile6.dart';
import 'package:app/pages/profile7.dart';
import 'package:app/pages/profile9.dart';
import 'package:app/places/place1.dart';
import 'package:app/settings/Settings2.dart';
import 'package:app/settings/settings1.dart';
import 'package:app/settings/settings3.dart';
import 'package:app/settings/settings4.dart';
import 'package:app/travel/destinations.dart';
import 'package:app/travel/travel1.dart';
import 'package:app/travel/travel2.dart';
import 'package:app/trips/trips1.dart';
import 'package:app/trips/trips2.dart';
import 'package:flutter/material.dart';

import 'Lists/OnBoarding/onboard2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home:Onboard2(),
    );
  }
}

