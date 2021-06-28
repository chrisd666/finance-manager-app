import 'package:flutter/material.dart';

class HeaderIconButton {
  final Icon icon;
  final Function handler;

  const HeaderIconButton(this.icon, this.handler);
}

class Header extends StatelessWidget {
  final String title;
  final List<HeaderIconButton> iconButtonList;

  const Header(this.title, this.iconButtonList);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: iconButtonList
              .map((e) => IconButton(onPressed: () => e.handler, icon: e.icon))
              .toList(),
        )
      ],
    );
  }
}
