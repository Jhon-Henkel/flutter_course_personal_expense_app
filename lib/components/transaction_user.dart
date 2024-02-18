import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_course_personal_expense_app/components/transaction_form.dart';
import 'package:flutter_course_personal_expense_app/components/transaction_list.dart';
import 'package:flutter_course_personal_expense_app/models/transactions.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(id: 't1', title: 'teste1', value: 10.40, date: DateTime.now()),
    Transaction(id: 't2', title: 'teste2', value: 30.99, date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}