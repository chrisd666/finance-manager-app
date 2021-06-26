class Transaction {
  final DateTime date;
  final String category;
  final double amount;
  final String? note;

  Transaction(
      {required this.date,
      required this.category,
      required this.amount,
      this.note});
}

List<Transaction> transactions = [
  Transaction(
      date: DateTime(2021, 06, 24, 22, 25), category: "Bank", amount: 340),
  Transaction(
      date: DateTime(2021, 06, 23, 21, 15), category: "Automobile", amount: 70),
  Transaction(
      date: DateTime(2021, 06, 22, 20, 05), category: "Gift", amount: 110),
  Transaction(
      date: DateTime(2021, 05, 21, 19, 55), category: "Eating", amount: 60),
  Transaction(
      date: DateTime(2021, 05, 20, 18, 45), category: "Charity", amount: 1200),
];
