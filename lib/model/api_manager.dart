import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/NewsResponse.dart';
import 'package:newsapp/model/SourceResponse.dart';
import 'package:newsapp/model/api_constants.dart';

class ApiManager {
  static Future<SourceResponse> getSources(String categoryId) async {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=c1912ec63a8e4eebad999bb7a7457e54
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.sourceApi,
        {'apiKey': 'c1912ec63a8e4eebad999bb7a7457e54',
          'category' : categoryId
        });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return SourceResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNewsBySourceId(String sourceId)async{
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=c1912ec63a8e4eebad999bb7a7457e54
    Uri url = Uri.https(ApiConstants.baseUrl, ApiConstants.NewsApi,
        {'apiKey': 'c1912ec63a8e4eebad999bb7a7457e54',
          'sources' : sourceId
        });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return NewsResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
