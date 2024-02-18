import 'package:flutter/material.dart';
import 'package:flutter_course_personal_expense_app/models/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(this.transactions, {super.key});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.purple,
                        width: 2
                    )
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$ ${transaction.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction.title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    DateFormat('d/MM/y').format(transaction.date),
                    style: const TextStyle(
                        color: Colors.grey
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}