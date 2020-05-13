import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class Networking {
  static String baseUrl = "https://newsapi.org/v2/";
  static String key = "**";

  String url;
  String text;

  Future<List<Map>> getData(String text) async {
    url = baseUrl + "top-headlines?sources=$text&apiKey=" + key;

    if (text == 'business' ||
        text == 'entertainment' ||
        text == 'health' ||
        text == 'science' ||
        text == 'sports' ||
        text == 'technology') {
      url = baseUrl + "top-headlines?country=in&category=$text&apiKey=" + key;
    }

    Response response = await get(url);
    if (response.statusCode == 200) {
      try {
        String data = response.body;
        List<Map> newsData = [];

        for (var i = 0; i < jsonDecode(data)['articles'].length; i++) {
          var dataAll = {
            'title': jsonDecode(data)['articles'][i]['title'],
            'description': jsonDecode(data)['articles'][i]['description'],
            'urlToImage': jsonDecode(data)['articles'][i]['urlToImage'],
            'url': jsonDecode(data)['articles'][i]['url'],
            'publishedAt': DateFormat.yMd().add_jm().format(
                DateTime.parse(jsonDecode(data)['articles'][i]['publishedAt'])),
            'content': jsonDecode(data)['articles'][i]['content']
          };
          newsData.add(dataAll);
        }
        //print(newsData);
        return newsData;
      } catch (e) {
        print(e);
      }
    } else {
      print(response.statusCode);
    }
  }
}
