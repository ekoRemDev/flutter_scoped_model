import 'package:flutter/material.dart';
import 'package:flutter_scoped_model/pages/page3.dart';
import 'package:flutter_scoped_model/scoped_model/main.dart';
import 'package:scoped_model/scoped_model.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text("Page 2"),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Your counter value is: ${model.count}',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Confirm'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<Page3>(
                              builder: (BuildContext context) => Page3()),
                        );
                      })
                ],
              ),
            );
          }),
    );
  }
}