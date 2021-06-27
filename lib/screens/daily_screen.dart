import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../models/Tranasction_dates.dart';
import '../models/Transaction.dart';

class DailyScreen extends StatefulWidget {
  @override
  _DailyScreenState createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  int activeDay = 4;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 3)
            ]),
            child: Padding(
              padding:
                  EdgeInsets.only(top: 60, bottom: 25, right: 20, left: 20),
              child: Column(
                children: [
                  Header("Daily Transaction",
                      [HeaderIconButton(Icon(Icons.search), () {})]),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(days.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeDay = index;
                          });
                        },
                        child: Container(
                          width: (size.width - 40) / 7,
                          child: Column(
                            children: [
                              Text(
                                days[index].label,
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: activeDay == index
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor)),
                                child: Center(
                                  child: Text(
                                    days[index].day,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: activeDay == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(transactions.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // width: (size.width) * 0.7,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.money,
                                    size: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: (size.width - 90) * 0.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      transactions[index].category,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      transactions[index].date.toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.5),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: (size.width - 40) * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "\$${transactions[index].amount}",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 65, top: 8),
                      child: Divider(
                        thickness: 0.8,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              );
            }),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                ),
                Spacer(),
                Text(
                  "\$1700.00",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ]))
        ],
      ),
    );
  }
}
