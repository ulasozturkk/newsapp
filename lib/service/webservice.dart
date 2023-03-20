
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/newsArticle.dart';
import 'package:newsapp/utils/constants.dart';


class Webservice {

  Future<List<newsarticle>> fetchHeadlinesByKeyword(String keyword) async {
    
    final response = await http.get(Uri.parse(Constants.headlinesByKeyword(keyword)));

    if(response.statusCode == 200){
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((json) => newsarticle.fromJson(json)).toList();

    }else{
      throw Exception("failed to load search..");
    }
  }


  Future<List<newsarticle>> fetchTopHeadlines() async {
    
    final response = await http.get(Uri.parse(Constants.topHeadLinesURL));

    if(response.statusCode == 200){

     final result = jsonDecode(response.body);
     Iterable List = result["articles"];
     return List.map((article) => newsarticle.fromJson(article)).toList();

    }
    else{
      throw Exception("failed to load top news");
    }

  }

}