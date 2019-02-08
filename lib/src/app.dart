import 'package:flutter/material.dart';
import 'screens/tech_news_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechNews',
      home: TechNewsList(),
      
    );
  }
}