import 'package:flutter/material.dart';

import './model/Transaction.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expenses'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            child: Card(
              elevation: 7,
              child: Container(
                child: Text('CHART'),
                margin: EdgeInsets.all(15),
              ),
            ),
          ),
          Card(
            child: Text('List Trx'),
          )
        ],
      ),
    );
  }
}
