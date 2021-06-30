import 'package:flutter/material.dart';

class PNLBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                "Income",
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "6954.00",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.green),
              ),
            ],
          ),
          Column(
            children: [
              Text("Expense"),
              SizedBox(
                height: 8,
              ),
              Text(
                "8665.00",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.red),
              ),
            ],
          ),
          Column(
            children: [
              Text("Total"),
              SizedBox(
                height: 8,
              ),
              Text(
                "-1711.00",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
