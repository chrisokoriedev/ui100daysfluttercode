import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:helloworld/reuseable_component/styles.dart';
import 'package:helloworld/view/expense_list.dart';
import 'package:helloworld/view/homepage.dart';
import 'package:helloworld/view/menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavIndex = 0;
  List getScreen = [
    const HomePage(),
    const Expense(),
    const MenuScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getScreen.elementAt(_bottomNavIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        activeColor: primaryColor,
        icons: const [
          Icons.home_filled,
          Icons.bar_chart,
          Icons.menu,
        ],
        blurEffect: true,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
