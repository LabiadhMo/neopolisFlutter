import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  static final String serverAdress = "192.168.43.48:8080";
  factory ApiService() {
    return _apiService;
  }

  ApiService._internal();

  Future<List> getAllTraks() async {
    var uri = Uri.http(serverAdress, "/alltracks");

    var response = await http.get(uri, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    if (response.statusCode != 200) return null;
    var rep = jsonDecode(response.body);
    print('Tracks Fetched !');
    return response.body.isEmpty ? null : rep;
  }
}
