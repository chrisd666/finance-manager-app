class TransactionDays {
  final String label, day;

  const TransactionDays(this.label, this.day);
}

class TransactionMonths {
  final String month;

  const TransactionMonths(this.month);
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
  TransactionMonths("Jan"),
  TransactionMonths("Feb"),
  TransactionMonths("Mar"),
  TransactionMonths("Apr"),
  TransactionMonths("May"),
  TransactionMonths("Jun"),
  TransactionMonths("Jul"),
  TransactionMonths("Aug"),
  TransactionMonths("Sep"),
  TransactionMonths("Oct"),
  TransactionMonths("Nov"),
  TransactionMonths("Dec"),
];
