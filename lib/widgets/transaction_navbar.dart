import 'package:flutter/material.dart';
import '../constants.dart';

class TransactionNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Daily",
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          Text("Calendar",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              )),
          Text("Weekly", style: TextStyle(color: Colors.white70, fontSize: 16)),
          Text("Monthly",
              style: TextStyle(color: Colors.white70, fontSize: 16)),
          Text("Total", style: TextStyle(color: Colors.white70, fontSize: 16)),
        ],
      ),
    );
  }
}
