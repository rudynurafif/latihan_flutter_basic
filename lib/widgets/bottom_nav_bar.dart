import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int navIndex;

  List showWidget = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Explore'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  @override
  void initState() {
    navIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Navbar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: showWidget[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            navIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
