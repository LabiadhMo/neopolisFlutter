import 'package:flutter/material.dart';
import 'package:music_player/screens/Tracks/tracks.dart';
import 'package:music_player/screens/login/login.dart';
import 'package:music_player/screens/player/model/myaudio.dart';
import 'package:music_player/screens/player/player.dart';
import 'package:provider/provider.dart';

import 'screens/register/register.dart';

void main() {
  runApp(MyApp());
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
      home:
          Register(), //Login() // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
