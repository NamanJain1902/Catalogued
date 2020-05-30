import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { // extends let us implement inheritance
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Noobs App"),
        ),
        body: Column(children: [Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/a.jpg'),
              Text('Kimono mazame no shinka'),
            ],
           ),
          ),],
        ),
      )
    );
  }
}
