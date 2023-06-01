import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/matches_model.dart';

var apiKey =
    "a875bbb5a424ceba7ec9c22e5f5e093a512f103a27f00d5b053859fcf0d9f94b&fbclid=IwAR0Gu-uRPorasYsSXeq9QHcx_Jvox1fzMhCCIn6YDZjXfUil0FO8FdEuiM0";
var baseUrl =
    "https://apiv3.apifootball.com/?action=get_standings&league_id=3&APIkey=$apiKey";
getPost() async {
  Uri url = Uri.parse(baseUrl);
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = matchesFromJson(res.body);
      print(res.body);
      return data;
    } else {
      print("Error");
    }
  } catch (e) {
    print(e.toString());
  }
}
