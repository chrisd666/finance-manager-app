import 'package:flutter/material.dart';

class DailyTransactionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _DailyTransactionsCardHeader(),
            Divider(
              thickness: 0.8,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Food"),
                    Column(
                      children: [
                        Text("Sent back money"),
                        Text("Mid Term Wants")
                      ],
                    ),
                    Text("2,500")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Food"),
                    Column(
                      children: [
                        Text("Sent back money"),
                        Text("Mid Term Wants")
                      ],
                    ),
                    Text("2,500")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Food"),
                    Column(
                      children: [
                        Text("Sent back money"),
                        Text("Mid Term Wants")
                      ],
                    ),
                    Text("2,500")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _DailyTransactionsCardHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "20",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.red)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  "Sun",
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
