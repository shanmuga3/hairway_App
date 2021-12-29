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
      child: sc(
        Scaffold(
            bottomNavigationBar: Container(
              height: 61,
              width: MediaQuery.of(context).size.width,
              child: RollingNavBar.iconData(
                iconSize: 25,
                iconText: [
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    'Orders',
                    style: Theme.of(context).primaryTextTheme.bodyText2,
                  ),
                  Text(
                    "Support",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.bodyText2,
                  ),
                  Text(
                    'Profile',
                    style: Theme.of(context).primaryTextTheme.bodyText2,
                  )
                ],
                iconData: [Icons.home, Icons.lock, Icons.menu_book, Icons.person],
                animationCurve: Curves.easeOut,
                baseAnimationSpeed: 300,
                animationType: AnimationType.roll,
                indicatorColors: <Color>[Theme.of(context).primaryColor],
                onTap: _onItemTap,
              ),
            ),
            drawer: _selectedIndex == 0
                ? DrawerWidget(
                    a: widget.analytics,
                    o: widget.observer,
                  )
                : null,
            body: _children().elementAt(_selectedIndex)),
      ),
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
