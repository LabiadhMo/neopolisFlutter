import 'package:flutter/material.dart';
import 'package:music_player/screens/player/model/myaudio.dart';
import 'package:music_player/screens/player/player.dart';
import 'package:music_player/services/APiService.dart';
import 'package:provider/provider.dart';

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  ApiService _apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                IconButton(icon: Icon(Icons.home), onPressed: null),
                IconButton(icon: Icon(Icons.search), onPressed: null),
                IconButton(
                    icon: Icon(Icons.play_arrow_rounded), onPressed: null)
              ],
            ),
          ),
          body: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/registerBackground.png'),
                    fit: BoxFit.cover),
              ),
              child: FutureBuilder(
                future: _apiService.getAllTraks(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayerPage()),
                              );
                            },
                            title: Text(
                              snapshot.data[i]["name"],
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        });
                  } else
                    return CircularProgressIndicator();
                },
              )),
        ));
  }
}
