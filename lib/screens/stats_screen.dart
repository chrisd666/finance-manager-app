import 'package:finance_manager/widgets/custom_year_picker.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/stats_chart.dart';
import '../widgets/custom_month_picker.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  int activeMonthIdx = 4;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
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
                padding: const EdgeInsets.only(
                    top: 60, left: 20, right: 20, bottom: 25),
                child: Column(
                  children: [
                    Header(
                        "Stats", [HeaderIconButton(Icon(Icons.search), () {})]),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    CustomYearPicker(),
                    CustomMonthPicker()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 250,
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
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Net balance",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$2446.90",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: size.width - 20,
                          height: 150,
                          child: StatsChart(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
