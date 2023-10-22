import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/modules/home/home_view.dart';
import 'package:quiz/modules/insights/insights_view.dart';
import 'package:quiz/modules/today/today_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> screens =[
    HomeView(),
    TodayView(),
    InsightsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(width: 20),
            Text(
              "Moody",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -1, end: 1),
              child: ImageIcon(
                AssetImage("assets/images/bell.png"),
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: 20)
        ],
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedIconTheme: IconThemeData(color: Color(0xFF6941C6),size: 32),
        selectedItemColor: Color(0xFF6941C6),
        unselectedIconTheme: IconThemeData(color: Color(0xFF667085),size: 28),
        unselectedItemColor: Color(0xFF667085),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex =value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/home.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/today.png")),
            label: "Today",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/insights.png")),
            label: "Insights",
          ),
        ],
      ),
    );
  }
}
