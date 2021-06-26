import 'package:finance_manager/models/Tranasction_dates.dart';
import 'package:flutter/material.dart';

class DailyScreen extends StatefulWidget {
  @override
  _DailyScreenState createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daily Transaction",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  ),
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
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (size.width) * 0.7,
                      child: Row(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(

                          ),
                        )
                      ],),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
