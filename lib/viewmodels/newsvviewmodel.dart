



import 'package:newsapp/models/newsArticle.dart';

class NewsArticleViewModel {

  newsarticle _newsArticle;

  NewsArticleViewModel({required newsarticle article}): _newsArticle = article;

  String get title {
    return _newsArticle.title;
  }

  String get description {
    return _newsArticle.description;
  }

  String get imageURL {
    return _newsArticle.urlToImage;
  }

  String get url {
    return _newsArticle.url;
  }
}