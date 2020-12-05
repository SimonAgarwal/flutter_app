import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  var log = Logger();
  String baseurl = 'https://localhost:8080';

  Future<dynamic> post(String url, Map<String, String> body) async {
    url = formatter(url);
    var response = await http.post(url,
        headers: {"Content-type": "application/json"}, body: json.encode(body));
    if (response.statusCode == 200) {
      return response;
    }
  }

  String formatter(String url) {
    return baseurl + url;
  }
}
