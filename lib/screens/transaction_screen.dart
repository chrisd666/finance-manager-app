import 'package:collection/collection.dart';
import 'package:finance_manager/constants.dart';
import 'package:finance_manager/widgets/daily_transaction_body.dart';
import 'package:finance_manager/widgets/daily_transactions_card.dart';
import 'package:finance_manager/widgets/pnl_bar.dart';
import 'package:finance_manager/widgets/daily_transaction_header.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import '../widgets/header.dart';
import '../models/Transaction.dart';
import 'package:finance_manager/widgets/custom_month_picker.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  var _groupedTransactions = () {
    Map<String, List<Transaction>> dailyGroupedTransactions =
        groupBy(transactions, (Transaction transaction) {
      return Jiffy(transaction.date).format("dd-MM-yyyy");
    });

    List<GroupedTransaction> result = [];

    dailyGroupedTransactions.forEach((date, list) {
      result.add(GroupedTransaction(Jiffy(date, "dd-MM-yyyy"), list));
    });

    return result;

    return result.map((e) {
      return ExpansionPanel(
          isExpanded: true,
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: DailyTransactionHeader(e.date),
            );
          },
          body: DailyTransactionBody(e.transactions));
    }).toList();
  }();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6)
            ]),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 60, bottom: 25, right: 20, left: 20),
              child: Column(
                children: [
                  Header("Daily Transaction",
                      [HeaderIconButton(Icon(Icons.search), () {})]),
                  CustomMonthPicker(),
                  Divider(
                    thickness: 0.8,
                  ),
                  PNLBar()
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.symmetric(vertical: 8),
                expansionCallback: (index, isExpanded) {},
                children: _groupedTransactions.map((e) {
                  return ExpansionPanel(
                      isExpanded: true,
                      headerBuilder: (context, isExpanded) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DailyTransactionHeader(e.date),
                        );
                      },
                      body: DailyTransactionBody(e.transactions));
                }).toList()),
          )
        ],
      ),
    );
  }
}
