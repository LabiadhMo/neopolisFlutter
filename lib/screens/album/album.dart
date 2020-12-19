import 'package:flutter/material.dart';
import 'package:music_player/models/album.dart';
import 'package:music_player/screens/Tracks/tracks.dart';
import 'package:music_player/services/APiService.dart';

class Albums extends StatefulWidget {
  @override
  _AlbumsState createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  ApiService _apiService = ApiService();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff3E2F8F),
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
                future: _apiService.getAllAlbums(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, i) {
                          Album album = Album.fromJson(snapshot.data[i]);
                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Playlist(album: album)));
                            },
                            title: Text(
                              album.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Text(
                              (i + 1).toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Text(
                              album.tracks.length.toString() + ' Tracks',
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
