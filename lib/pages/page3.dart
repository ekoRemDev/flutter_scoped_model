import 'package:flutter/material.dart';
import 'package:flutter_scoped_model/scoped_model/main.dart';
import 'package:scoped_model/scoped_model.dart';

class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Page 3"),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
            return Center(
              child: Text(
                '${model.count}',
                style: TextStyle(fontSize: 80.0),
              ),
            );
          }),
    );
  }
}