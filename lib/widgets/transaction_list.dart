import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransaction;

  TransactionList(this._userTransaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (BuildContext ctx, int index){
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Text(
                    '\$${_userTransaction[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        _userTransaction[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        DateFormat('dd MMMM yyyy').format(_userTransaction[index].date),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: _userTransaction.length,
      ),
    );
  }
}