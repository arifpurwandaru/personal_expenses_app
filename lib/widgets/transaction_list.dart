import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransaction;
  final Function _deleteTrx;

  TransactionList(this._userTransaction, this._deleteTrx);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: _userTransaction.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transaction added yet!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (BuildContext ctx, int index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${_userTransaction[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      _userTransaction[index].title,
                      style: Theme.of(ctx).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(_userTransaction[index].date),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () => _deleteTrx(_userTransaction[index].id),
                    ),
                  ),
                );
              },
              itemCount: _userTransaction.length,
            ),
    );
  }
}
