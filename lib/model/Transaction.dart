//we can just import material.dart
//but we just ned @required annotation
//it's in foundation.dart
import 'package:flutter/foundation.dart'; 

class Transaction {
  String id;
  String title;
  double amount;
  DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
