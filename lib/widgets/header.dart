import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import '../constants.dart';

class Header extends StatefulWidget {
  @override
  __HeaderState createState() => __HeaderState();
}

class __HeaderState extends State<Header> {
  Jiffy _selectedDate = Jiffy(DateTime.now());

  void handleMonthChange(int step) {
    setState(() {
      _selectedDate = _selectedDate.add(months: step);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(defaultPadding),
      color: Colors.teal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () => handleMonthChange(-1),
                icon: Icon(Icons.chevron_left),
                color: Colors.white,
              ),
              TextButton(
                  onPressed: () => print("Pressed month"),
                  child: Text(
                    _selectedDate.format("MMM yyyy"),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () => handleMonthChange(1),
                icon: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () => print("Search Pressed"),
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => print("Filter Pressed"),
                  icon: Icon(Icons.filter_list, color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
