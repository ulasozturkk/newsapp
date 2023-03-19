
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/newsArticle.dart';


class Webservice {

  Future<List<newsarticle>> fetchTopHeadlines() async {

    String url = "https://newsapi.org/v2/everything?q=tesla&from=2023-02-19&sortBy=publishedAt&apiKey=678b89a96bb34e8e89efef20f3d68bc8";
    
    final response = await http.get(Uri.parse(url));

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