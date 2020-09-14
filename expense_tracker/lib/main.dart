import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 'tx1',
        title: 'Nike Shoes',
        price: 89.99,
        createdAt: DateTime.now()),
    Transaction(
        id: 'tx2', title: 'Milk', price: 5.99, createdAt: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Expense Tracker'),
        ),
        body: Column(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.amberAccent,
                  child: Text('CHART WIDGET'),
                  elevation: 5,
                ),
              ),
              Container(
                child: Card(
                  child: Text('LISTVIEW WIDGET'),
                ),
              )
            ]));
  }
}
