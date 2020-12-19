import 'package:music_player/models/album.dart';

class Track {
  String title;
  String path;
  bool isFav;
  Track({String title, String path, bool isFav})
      : this.title = title,
        this.isFav = isFav,
        this.path = path;

  static Track fromJson(data) {
    return Track(
      isFav: false,
      path: data['path'],
      title: data['name'],
    );
  }
}
