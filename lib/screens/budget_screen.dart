import 'package:finance_manager/models/Budget.dart';
import 'package:finance_manager/models/Tranasction_dates.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({Key? key}) : super(key: key);

  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  int activeMonthIdx = 4;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.05),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.01),
                  spreadRadius: 10,
                  blurRadius: 3)
            ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 20, right: 20, bottom: 25),
              child: Column(
                children: [
                  Header("Budgets", [
                    HeaderIconButton(Icon(Icons.add), () {}),
                    HeaderIconButton(Icon(Icons.search), () {})
                  ]),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(months.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMonthIdx = index;
                          });
                        },
                        child: Container(
                          width: (size.width - 40) / 7,
                          child: Column(
                            children: [
                              Text(
                                months[index].year,
                                style: TextStyle(fontSize: 10),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: activeMonthIdx == index
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 7, bottom: 7, right: 12, left: 12),
                                  child: Text(
                                    months[index].month,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: activeMonthIdx == index
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
            height: 20,
          ),
          Column(
            children: List.generate(budgets.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.01),
                            spreadRadius: 10,
                            blurRadius: 3)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          budgets[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "\$${budgets[index].price}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "${budgets[index].percentage * 100}%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                "\$5000.00",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Container(
                                width: size.width - 40,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(5))),
                            Container(
                                width: (size.width - 40) *
                                    budgets[index].percentage,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
