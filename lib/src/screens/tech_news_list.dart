import 'package:flutter/material.dart';
import 'dart:async';

class TechNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('TechNews'),
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (context, int index) {
        return FutureBuilder(
          future: getFuture(),
          builder: (context, snapshot) {
            return Container(
              height:80.0,
              child: snapshot.hasData 
            ? Text('Im rendering to the screen.$index') 
            : Text('I havent rendered yet $index'),
            );
          },

        );
      },
    );
  }

  getFuture(){
    return Future.delayed(Duration(seconds: 2),
    () => 'hi',
    );
  }
}