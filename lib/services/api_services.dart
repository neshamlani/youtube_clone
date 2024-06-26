import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:youtube_clone/utils/constants.dart';

class ApiServices {
  static Future<Map<String, dynamic>> getVideos(String url) async {
    http.Response response =
        await http.get(Uri.parse("${Constants.baseUrl}$url"));
    print("response => ${jsonDecode(response.body)}");
    var data = jsonDecode(response.body);
    return data;
  }
}
