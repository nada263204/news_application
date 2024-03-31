
import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices{
  static Future getSources(String category) async{
    final uri = Uri.https(
      "newsapi.org",
      "/v2/top-headlines",
    {
      "apikey" : "2fde9339056248d7a4469f8dffdd6d60",
      "category" : category
    });
   final response  = await http.get(uri);
   final json = jsonDecode(response.body);
  }
}