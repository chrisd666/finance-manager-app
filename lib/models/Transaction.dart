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

List<Transaction> transactions = [
  Transaction(
      date: DateTime(2021, 06, 24, 22, 25),
      category: "Bank",
      account: 'Other',
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
      amount: 1200),
];
