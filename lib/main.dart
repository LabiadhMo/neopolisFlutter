import 'package:flutter/material.dart';

import 'package:music_player/screens/splashscreen/splash.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(), //Login() // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
