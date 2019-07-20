import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function _addTransaction;
  NewTransaction(this._addTransaction);

  void submitTrx(){
    bool empty = titleController.text.isEmpty || amountController.text.isEmpty;
    if(empty) return;
    double amount = double.parse(amountController.text);
    if(empty || amount <= 0) return;
    _addTransaction(titleController.text,amount);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    onSubmitted: (_) => submitTrx,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (_) => submitTrx,
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    onPressed: submitTrx,
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
          );
  }
}