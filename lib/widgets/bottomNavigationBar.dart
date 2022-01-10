import 'package:app/models/businessLayer/baseRoute.dart';

import 'package:app/screens/helpAndSupportScreen.dart';
import 'package:app/screens/homeScreen.dart';
import 'package:app/screens/profileScreen.dart';
import 'package:app/screens/requestScreen.dart';
import 'package:app/widgets/drawerWidget.dart';
import 'package:flutter/material.dart';
import 'package:rolling_nav_bar/rolling_nav_bar.dart';

class BottomNavigationWidget extends BaseRoute {
  BottomNavigationWidget({a, o}) : super(a: a, o: o, r: 'BottomNavigationWidget');
  @override
  _BottomNavigationWidgetState createState() => new _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends BaseRouteState {
  _BottomNavigationWidgetState() : super();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return exitAppDialog();
      },
      child:
        Scaffold(
            bottomNavigationBar:  BottomNavigationBar(

              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: 'Orders',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Support',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],unselectedItemColor: Colors.black,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTap,
            ),
            drawer: _selectedIndex == 0
                ? DrawerWidget(
                    a: widget.analytics,
                    o: widget.observer,
                  )
                : null,
            body: _children().elementAt(_selectedIndex)),
      );

  }

  @override
  void dispose() {
    super.dispose();
  }

  bool isloading = true;
  _onItemTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  List<Widget> _children() => [HomeScreen(a: widget.analytics, o: widget.observer), RequestScreen(a: widget.analytics, o: widget.observer),HelpAndSupportScreen(a: widget.analytics, o: widget.observer), ProfileScreen(a: widget.analytics, o: widget.observer)];

  @override
  void initState() {
    super.initState();
  }
}
