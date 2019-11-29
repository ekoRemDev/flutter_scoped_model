import 'package:flutter/material.dart';
import 'package:flutter_scoped_model/pages/page2.dart';
import 'package:flutter_scoped_model/scoped_model/main.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MainModel _model = MainModel();

    return ScopedModel<MainModel>(
        model: _model,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (BuildContext context, Widget child, MainModel model) {
          return Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${model.count}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  SizedBox(height: 10.0),
                  RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Submit'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<Page2>(
                              builder: (BuildContext context) => Page2()),
                        );
                      })
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.incrementCount();
              }, //_incrementCounter(_model),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          );
        });
  }
}