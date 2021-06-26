import 'package:finance_manager/screens/daily_screen.dart';
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
      home: Scaffold(
        body: _Body(_onItemTapped, _selectedIndex),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onItemTapped(4),
          child: Icon(
            Icons.add,
            size: 25,
          ),
        ),
        bottomNavigationBar: _Footer(_onItemTapped, _selectedIndex),
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
        Center(
          child: Text("Stats Page"),
        ),
        Center(
          child: Text("Create Budget Page"),
        ),
        Center(
          child: Text("Budget Page"),
        ),
        Center(
          child: Text("Profile Page"),
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
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.calculate), label: "Transactions"),
        BottomNavigationBarItem(icon: Icon(Icons.auto_graph), label: "Stats"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedIconTheme:
          IconThemeData(color: Theme.of(context).primaryColorLight),
      onTap: onTap,
    );
  }
}
