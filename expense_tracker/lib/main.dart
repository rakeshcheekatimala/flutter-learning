import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
        id: 'tx2', title: 'Milk', price: 15.99, createdAt: DateTime.now())
  ];

  String title; // this value will store the textfield for titleInput
  String amount; // this value will store the textfield for amountInput
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
              Card(
                elevation: 5,
                child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(labelText: 'Title'),
                            onChanged: (val) => {title = val},
                          ),
                          TextField(
                            decoration: InputDecoration(labelText: 'Amuount'),
                            onChanged: (val) => {amount = val},
                          ),
                          RaisedButton(
                            onPressed: () => {print(title + amount)},
                            child: Text('Add'),
                            color: Colors.purpleAccent,
                            padding: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16.0))),
                          )
                        ])),
              ),
              Column(
                  children: transactions.map((tx) {
                return Card(
                    child: Row(children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      child: Text(
                        '\$ ${tx.price.toString()}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      )),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat.yMMMMd("en_US")
                              .add_jm()
                              .format(tx.createdAt),
                          style: TextStyle(color: Colors.grey),
                        )
                      ])
                ]));
              }).toList())
            ]));
  }
}
