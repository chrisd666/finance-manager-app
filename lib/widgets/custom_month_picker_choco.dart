import 'package:flutter/material.dart';
import 'package:finance_manager/models/Tranasction_dates.dart';

class CustomMonthPicker extends StatefulWidget {
  @override
  _CustomMonthPickerState createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends State<CustomMonthPicker> {
  int activeMonthIdx = 4;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Wrap(
      spacing: 8,
      runSpacing: 8,
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
                Container(
                  decoration: BoxDecoration(
                      color: activeMonthIdx == index
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(color: Theme.of(context).primaryColor)),
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
    );
  }
}
