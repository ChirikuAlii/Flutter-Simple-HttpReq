import 'dart:convert';
import 'dart:developer';
import 'package:simple_consume_api/data/remote/api_service.dart';
import 'package:simple_consume_api/data/remote/model/news_response_entity.dart';
import 'package:http/http.dart' as http;

class ApiServiceImpl {
  var client = http.Client();
  final String _apiKey= "452a8b968c514facb39fd8fff27381bb";
  final String baseUrl = "https://newsapi.org/v2/";

  late NewsResponseEntity _newsResponse;

  Uri getApiServiceUri(String url , Map<String,dynamic>? query){
    if(query?.isEmpty == true){
      return Uri.http(baseUrl, url);
    }else{
      return Uri.http(baseUrl, url,query);
    }
  }

  Future<NewsResponseEntity> getNews(String query,String from, String sortBy) async {
    const _url = "everything";

    var response = await client.get(Uri.parse("$baseUrl/$_url?q=$query&from=$from&sortBy=$sortBy&apiKey=$_apiKey") , headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });
    if(response.statusCode == 200){
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);

      _newsResponse = NewsResponseEntity.fromJson(jsonMap);

      log("getNews Api response ${_newsResponse}");
    }else{
      log("getNews Api status code ${response.body}");
      throw "cant get news api";
    }

    return _newsResponse;
  }


}