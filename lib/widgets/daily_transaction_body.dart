import 'package:finance_manager/models/Transaction.dart';
import 'package:flutter/material.dart';

class DailyTransactionBody extends StatelessWidget {
  final List<Transaction> transactions;

  const DailyTransactionBody(this.transactions);

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Divider(
            thickness: 0.8,
          ),
          Column(
              children: transactions.map((e) {
            return _TransactionDetail(e);
          }).toList())
        ],
      ),
    );
  }
}

class _TransactionDetail extends StatelessWidget {
  final Transaction transaction;

  const _TransactionDetail(this.transaction);

  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              transaction.category,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                if (transaction.note != null)
                  Text(
                    transaction.note!,
                    style: TextStyle(fontSize: 15),
                  ),
                if (transaction.note != null) SizedBox(height: 10),
                Text(transaction.account, style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(transaction.amount.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.red)),
            ]),
          )
        ],
      ),
    );
  }
}
