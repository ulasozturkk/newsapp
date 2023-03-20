

import 'package:flutter/material.dart';
import 'package:newsapp/viewmodels/newslistviewmodel.dart';
import 'package:newsapp/viewmodels/newsvviewmodel.dart';

class NewsListWidget extends StatelessWidget {
  
  final List<NewsArticleViewModel> articles;

   NewsListWidget({
    super.key,
    required this.vm,
    required this.articles
  });

  final NewsArticleListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vm.articles.length,
      itemBuilder:(context, index) {
        final article = vm.articles[index];

        return ListTile(
          leading: Container(
            height: 100,
            width: 100,
            child: 
            article.imageURL == null ? Image.asset("images/ben.jpeg"): Image.network(article.imageURL)
            // normalde bu condition tam tersi olacak
            
            ),
          title: Text(article.title),
        );
      },);
  }
}