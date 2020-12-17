import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screens/player/playerControls.dart';
import 'package:provider/provider.dart';

import 'colors.dart';
import 'model/myaudio.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  double sliderValue = 2;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/registerBackground.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Gidget',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: darkPrimaryColor),
            ),
            Text(
              'The Free Nationals',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: darkPrimaryColor),
            ),
            Column(
              children: [
                SliderTheme(
                  data: SliderThemeData(
                      trackHeight: 5,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5)),
                  child: Consumer<MyAudio>(
                    builder: (_, myAudioModel, child) => Slider(
                      value: myAudioModel.position == null
                          ? 0
                          : myAudioModel.position.inMilliseconds.toDouble(),
                      activeColor: darkPrimaryColor,
                      inactiveColor: darkPrimaryColor.withOpacity(0.3),
                      onChanged: (value) {
                        myAudioModel
                            .seekAudio(Duration(milliseconds: value.toInt()));
                      },
                      min: 0,
                      max: myAudioModel.totalDuration == null
                          ? 20
                          : myAudioModel.totalDuration.inMilliseconds
                              .toDouble(),
                    ),
                  ),
                ),
              ],
            ),
            PlayerControls(),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
