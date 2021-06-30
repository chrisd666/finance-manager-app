import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class CustomMonthPicker extends StatefulWidget {
  const CustomMonthPicker({Key? key}) : super(key: key);

  @override
  _CustomMonthPickerState createState() => _CustomMonthPickerState();
}

class _CustomMonthPickerState extends State<CustomMonthPicker> {
  Jiffy selectedDate = Jiffy();

  void handleDateChange(int step) {
    setState(() {
      selectedDate = selectedDate.add(months: step);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selectedDate.format("MMMM yyyy"),
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Row(children: [
          IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () => handleDateChange(-1)),
          IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () => handleDateChange(1)),
        ])
      ],
    );
  }
}
