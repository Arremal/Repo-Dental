
/*import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutapp/constants/strings.dart';
import 'package:flutapp/models/newsInfo.dart';

class ApiManger{
  void getNews() async{
    var client = http.Client();

    var response = await client.get(Strings.news_url);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);

      var newsModel = NewsModel.fromJson(jsonMap);
    }
  }
}*/