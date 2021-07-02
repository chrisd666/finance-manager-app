import 'package:flutter/material.dart';

class DailyTransactionBody extends StatelessWidget {
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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Text(
                          "Sent back money",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text("Mid Term Wants",
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    Text("2,500",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.red))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Text(
                          "Sent back money",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text("Mid Term Wants",
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    Text("2,500",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.red))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Food",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Column(
                      children: [
                        Text(
                          "Sent back money",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text("Mid Term Wants",
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                    Text("2,500",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.red))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
