

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/viewmodels/newslistviewmodel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<NewsArticleListViewModel>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text("Top News"),),
      body: ListView.builder(
        itemCount: vm.articles.length,
        itemBuilder:(context, index) {
          final article = vm.articles[index];

          return ListTile(
            leading: Container(
              height: 100,
              width: 100,
              child: 
              article.imageURL == null ? Image.network(article.imageURL) : Image.asset("images/ben.jpeg")
              // normalde bu condition tam tersi olacak
              
              ),
            title: Text(article.title),
          );
        },)
    );
  }
}