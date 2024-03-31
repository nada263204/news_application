import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_application/models/sources_response/sources_response.dart';

class APIServices {
  static Future getSources(String category) async {
    try {
      final uri = Uri.https("newsapi.org", "/v2/top-headlines",
        {"apikey": "2fde9339056248d7a4469f8dffdd6d60", "category": category});
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    return SourcesResponse.fromJson(json);
    } catch (e) {
      print(e);
    }
  }}
