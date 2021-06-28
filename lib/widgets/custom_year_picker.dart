import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class CustomYearPicker extends StatefulWidget {
  const CustomYearPicker({Key? key}) : super(key: key);

  @override
  _CustomYearPickerState createState() => _CustomYearPickerState();
}

class _CustomYearPickerState extends State<CustomYearPicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Jiffy().format("yyyy"),
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Row(children: [
          IconButton(icon: Icon(Icons.keyboard_arrow_up), onPressed: () {}),
          IconButton(icon: Icon(Icons.keyboard_arrow_down), onPressed: () {}),
        ])
      ],
    );
  }
}
