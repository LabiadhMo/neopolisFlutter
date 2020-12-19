import 'package:flutter/material.dart';
import 'package:music_player/models/album.dart';
import 'package:music_player/models/track.dart';
import 'package:music_player/screens/player/player.dart';
import 'package:audioplayers/audioplayers.dart';

class Playlist extends StatefulWidget {
  Album album;

  Playlist({Key key, this.album}) : super(key: key);
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  List<Track> fav = [];
  bool showFav = false;
  AudioPlayer audioPlugin = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    List<Track> albumTracks = widget.album.tracks;
    String title = widget.album.name;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3E2F8F),
          actions: [
            IconButton(
              icon: Icon(showFav ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                setState(() {
                  showFav = !showFav;
                });
              },
            ),
            Icon(Icons.more_vert_rounded),
          ],
          title: Center(
            child: Text(title),
          ),
          bottom: TabBar(
            tabs: [
              IconButton(icon: Icon(Icons.home), onPressed: null),
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.play_arrow_rounded), onPressed: null)
            ],
          ),
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/registerBackground.png'),
                fit: BoxFit.cover),
          ),
          child: ListView.builder(
              itemCount: (albumTracks.length + 1),
              itemBuilder: (context, index) {
                int i = index - 1;
                if (index == 0)
                  return Container(
                    height: 250,
                    width: 250,
                    margin: EdgeInsets.all(40),
                    child: IconButton(
                        icon: Image.asset("assets/micFull.png"),
                        onPressed: () {}),
                  );
                return showFav
                    ? albumTracks[i].isFav
                        ? buildTrack(context, i, albumTracks, title)
                        : Container()
                    : buildTrack(context, i, albumTracks, title);
              }),
        ),
      ),
    );
  }

  InkWell buildTrack(BuildContext context, int i, List<Track> albumTracks,
      String albumTracksName) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Player(
                    current: albumTracks[i],
                    albumName: albumTracksName,
                  )),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                (i + 1).toString() + '.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Flexible(
              child: Text(
                albumTracks[i].title,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                Text(
                  '00:00',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 30,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(albumTracks[i].isFav
                        ? Icons.favorite
                        : Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        albumTracks[i].isFav
                            ? albumTracks[i].isFav = false
                            : albumTracks[i].isFav = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
