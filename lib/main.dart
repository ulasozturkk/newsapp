import 'package:flutter/material.dart';
import 'package:newsapp/viewmodels/newslistviewmodel.dart';
import 'package:newsapp/views/newslistpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
      
      child: NewsListPage(),
      )
    );
  }
}

