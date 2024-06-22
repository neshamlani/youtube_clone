import 'package:flutter/material.dart';
import 'Home/home.dart';
import 'Shorts/shorts.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentIndex = 0;

  List<Widget> _tabList = [
    Home(),
    Shorts(),
    Text("This is a add"),
    Text("This is a subscription"),
    Text("This is a library"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _tabList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/short_outlined.png")),
            label: "Shorts",
            activeIcon: ImageIcon(AssetImage("assets/icons/short_filled.png")),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/add.png")),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage("assets/icons/subscriptions_outlined.png")),
            label: "Subscription",
            activeIcon:
                ImageIcon(AssetImage("assets/icons/subscriptions_filled.png")),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/library_outlined.png")),
            label: "Library",
            activeIcon:
                ImageIcon(AssetImage("assets/icons/library_filled.png")),
          ),
        ],
      ),
    );
  }
}
