import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class DailyTransactionHeader extends StatelessWidget {
  final Jiffy date;

  const DailyTransactionHeader(this.date);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              date.format('dd'),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color:
                      date.format('EEE') == 'Sun' || date.format('EEE') == 'Sat'
                          ? Colors.red
                          : Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      color: date.format('EEE') == 'Sun' ||
                              date.format('EEE') == 'Sat'
                          ? Colors.red
                          : Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  date.format('EEE'),
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              "6954.00",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.green),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              "8665.00",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.red),
            ),
          ],
        )
      ],
    );
  }
}
