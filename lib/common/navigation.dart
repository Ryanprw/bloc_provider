import 'package:flutter/material.dart';
import 'package:learning_bloc/home/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                "assets/icons/home.png",
                color: _selectedIndex == 0 ? Colors.grey : Colors.black,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                "assets/icons/chat.png",
                color: _selectedIndex == 1 ? Colors.grey : Colors.black,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                "assets/icons/Outline.png",
                color: _selectedIndex == 2 ? Colors.grey : Colors.black,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset(
                "assets/icons/settings.png",
                color: _selectedIndex == 3 ? Colors.grey : Colors.black,
              ),
            ),
            label: "",
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
    );
  }
}
