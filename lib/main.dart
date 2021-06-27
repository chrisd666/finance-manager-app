import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:finance_manager/screens/budget_screen.dart';
import 'package:finance_manager/screens/daily_screen.dart';
import 'package:finance_manager/screens/stats_screen.dart';
import 'package:flutter/material.dart';
import './palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Manager',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent),
      home: SafeArea(
        child: Scaffold(
          body: _Body(_onItemTapped, _selectedIndex),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _onItemTapped(4),
            child: Icon(
              Icons.add,
              size: 25,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: _Footer(_onItemTapped, _selectedIndex),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const _Body(this.onTap, this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentIndex,
      children: [
        DailyScreen(),
        StatsScreen(),
        BudgetScreen(),
        Center(
          child: Text("Profile Page"),
        ),
        Center(
          child: Text("Create Budget Page"),
        ),
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const _Footer(this.onTap, this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      activeColor: Theme.of(context).primaryColor,
      splashColor: Theme.of(context).primaryColorDark,
      inactiveColor: Theme.of(context).primaryColorLight,
      icons: [
        Icons.calculate,
        Icons.auto_graph,
        Icons.account_balance_wallet,
        Icons.person,
      ],
      activeIndex: currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      iconSize: 25,
      onTap: onTap,
    );
  }
}
