class TransactionDays {
  final String label, day;

  const TransactionDays(this.label, this.day);
}

class TransactionMonths {
  final String year, month;

  const TransactionMonths(this.year, this.month);
}

List<TransactionDays> days = [
  TransactionDays("Sun", "28"),
  TransactionDays("Mon", "29"),
  TransactionDays("Tue", "30"),
  TransactionDays("Wed", "1"),
  TransactionDays("Thu", "2"),
  TransactionDays("Fri", "3"),
  TransactionDays("Sat", "4"),
];

List<TransactionMonths> months = [
  TransactionMonths("2021", "Jan"),
  TransactionMonths("2021", "Feb"),
  TransactionMonths("2021", "Mar"),
  TransactionMonths("2021", "Apr"),
  TransactionMonths("2021", "May"),
  TransactionMonths("2021", "Jun"),
];
