import 'package:music_player/models/track.dart';

class Album {
  String name;
  List<Track> tracks;
  Album({String name, List<Track> tracks})
      : this.name = name,
        this.tracks = tracks;

  static Album fromJson(data) {
    List<Track> tr = [];
    data['tracks'].forEach((v) {
      tr.add(Track.fromJson(v));
    });
    return Album(
      name: data['album_name'],
      tracks: tr,
    );
  }
}
