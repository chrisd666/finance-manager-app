import 'package:flutter/material.dart';

class Budget {
  final String name;
  final double price, percentage;
  final Color color;

  const Budget(
      {required this.name,
      required this.price,
      required this.percentage,
      required this.color});
}

List<Budget> budgets = [
  Budget(name: "Gift", price: 2250, percentage: 0.45, color: Colors.green),
  Budget(name: "Automobile", price: 3000, percentage: 0.7, color: Colors.red),
  Budget(name: "Bank", price: 4000, percentage: 0.9, color: Colors.blue)
];
