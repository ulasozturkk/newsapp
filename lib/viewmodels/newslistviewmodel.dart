

import 'package:flutter/material.dart';
import 'package:newsapp/models/newsArticle.dart';
import 'package:newsapp/service/webservice.dart';
import 'package:newsapp/viewmodels/newsvviewmodel.dart';



class NewsArticleListViewModel extends ChangeNotifier{

  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];

  NewsArticleListViewModel() {
    _populateTopHeadlines();
  }

  void search(String keyword) async{
    List<newsarticle> newsArticle= await Webservice().fetchHeadlinesByKeyword(keyword);
    this.articles = newsArticle.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();
  }

  void _populateTopHeadlines() async  {
    
    List<newsarticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles =  newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();

  }
}