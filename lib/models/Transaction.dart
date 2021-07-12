import 'package:jiffy/jiffy.dart';

class Transaction {
  final DateTime date;
  final String category, account;
  final double amount;
  final String? note;

  Transaction(
      {required this.date,
      required this.category,
      required this.account,
      required this.amount,
      this.note});
}

class GroupedTransaction {
  final Jiffy date;
  final List<Transaction> transactions;

  GroupedTransaction(this.date, this.transactions);
}

List<Transaction> transactions = [
  Transaction(
      date: DateTime(2021, 07, 12, 22, 25),
      category: "Bank",
      account: 'Testing',
      amount: 340),
  Transaction(
      date: DateTime(2021, 07, 11, 22, 25),
      category: "Bank",
      account: 'Testing',
      amount: 340),
  Transaction(
      date: DateTime(2021, 07, 10, 22, 25),
      category: "Bank",
      account: 'Testing',
      amount: 340),
  Transaction(
      date: DateTime(2021, 06, 23, 21, 15),
      category: "Automobile",
      account: 'Other',
      amount: 70),
  Transaction(
      date: DateTime(2021, 06, 22, 20, 05),
      category: "Gift",
      account: 'Other',
      amount: 110),
  Transaction(
      date: DateTime(2021, 05, 21, 19, 55),
      category: "Eating",
      account: 'Other',
      amount: 60),
  Transaction(
      date: DateTime(2021, 05, 20, 18, 45),
      category: "Charity",
      account: 'Other',
      note: 'Choco mocho biscoot',
      amount: 1200),
  Transaction(
      date: DateTime(2021, 05, 20, 18, 45),
      category: "Charity",
      account: 'Other',
      amount: 1200),
];
