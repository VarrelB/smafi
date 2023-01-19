import 'package:flutter/material.dart';

void main() => runApp(const Dashboard());

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      //theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      home: DashboardPageState(),
    );
  }
}

class DashboardPageState extends StatefulWidget {
  const DashboardPageState({super.key});

  @override
  State<DashboardPageState> createState() => DashboardPage();
}

class DashboardPage extends State<DashboardPageState> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Dashboard Content',
      style: optionStyle,
    ),
    Text(
      'Transaction Content',
      style: optionStyle,
    ),
    Text(
      'Transfer Content',
      style: optionStyle,
    ),
    Text(
      'Profile Content',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 231, 255),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Buy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multiple_stop),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 12, 100, 250),
        onTap: _onItemTapped,
      ),
    );
  }
}
