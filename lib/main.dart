import 'package:flutter/material.dart';
import 'package:flutter_course_personal_expense_app/models/transactions.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = [
    Transaction(id: 't1', title: 'teste1', value: 10.40, date: DateTime.now()),
    Transaction(id: 't2', title: 'teste2', value: 30.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Despesas Pessoais'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            child: Card(
              elevation: 5,
              color: Colors.blue,
              child: Text('Gráfico'),
            )
          ),
          Card(
            child: Text('Lista de Transações'),
          ),
        ]
      )
    );
  }
}