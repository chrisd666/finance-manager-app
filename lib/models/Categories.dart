import 'package:flutter/material.dart';

class Budget {
  final String name;
  final Icon icon;

  const Budget({
    required this.name,
    required this.icon,
  });
}

List<Budget> categories = [
  Budget(name: "Auto", icon: Icon(Icons.auto_awesome)),
  Budget(name: "Bank", icon: Icon(Icons.money)),
  Budget(name: "Cash", icon: Icon(Icons.money)),
  Budget(name: "Charity", icon: Icon(Icons.money)),
  Budget(name: "Eating", icon: Icon(Icons.restaurant)),
  Budget(name: "Gift", icon: Icon(Icons.card_giftcard)),
];
