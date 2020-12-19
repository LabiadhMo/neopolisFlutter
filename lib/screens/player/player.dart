import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_player/models/track.dart';

class Player extends StatefulWidget {
  Track current;
  String albumName;
  Player({Key key, this.current, this.albumName}) : super(key: key);
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    Track track = widget.current;
    String album = widget.albumName;
    String title = track.title.substring(0, track.title.length - 4);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/registerBackground.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color(0xff3E2F8F),
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () {
                        audioPlayer.stop();
                        Navigator.of(context).pop();
                      }),
                  Text(
                    'Now Playing',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildControl(
                    icon: Icon(Icons.pause),
                    label: 'Pause',
                    onPressedFunction: () {
                      audioPlayer.pause();
                    }),
                buildControl(
                    icon: Icon(Icons.play_arrow),
                    label: 'Play',
                    onPressedFunction: () {
                      audioPlayer.play(
                          'http://192.168.43.48:8080/sound/character/get/' +
                              album +
                              '/' +
                              title);
                    }),
                buildControl(
                    icon: Icon(Icons.stop),
                    label: 'Stop',
                    onPressedFunction: () {
                      audioPlayer.stop();
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildControl({Icon icon, Function onPressedFunction, String label}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 8, right: 10, top: 10),
      child: InkWell(
        onTap: onPressedFunction,
        child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: Center(
              child: icon,
            )),
      ),
    );
  }
}
