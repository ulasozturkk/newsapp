

import 'package:flutter/material.dart';
import 'package:newsapp/models/newsArticle.dart';


import 'package:newsapp/service/webservice.dart';
import 'package:newsapp/viewmodels/newsvviewmodel.dart';

class NewsArticleListViewModel extends ChangeNotifier{

  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];

  NewsArticleListViewModel() {
    _populateTopHeadlines();
  }

  void _populateTopHeadlines() async  {
    
    List<newsarticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles =  newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();

  }
}