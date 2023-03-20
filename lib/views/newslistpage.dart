

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newsapp/viewmodels/newslistviewmodel.dart';
import 'package:newsapp/widgets/newslist.dart';
import 'package:provider/provider.dart';

class NewsListPage extends StatelessWidget {
   
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<NewsArticleListViewModel>(context);
    
    return Scaffold(
      appBar: AppBar(title: Text("Top News"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onSubmitted: (value) {
                if(value.isNotEmpty){
                  vm.search(value);
                }
              },
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Search",
                icon: Icon(Icons.search),
                suffixIcon: IconButton(onPressed: () {
                  _controller.clear();
                }, icon: Icon(Icons.close))
              ),
            ),
          ),
          Expanded(child:
            vm.articles.isEmpty ? Text("No results found.") :
           NewsListWidget(vm: vm, articles: vm.articles)),
        ],
      )
    );
  }
}

