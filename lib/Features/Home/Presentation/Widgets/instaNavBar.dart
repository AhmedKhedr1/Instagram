import 'package:flutter/material.dart';

class InstaNavBar extends StatefulWidget {
  const InstaNavBar({super.key});

  @override
  State<InstaNavBar> createState() => _InstaNavBarState();
}

class _InstaNavBarState extends State<InstaNavBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home", style: TextStyle(color: Colors.white))),
    Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    Center(child: Text("Add Post", style: TextStyle(color: Colors.white))),
    Center(child: Text("Activity", style: TextStyle(color: Colors.white))),
    Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // زي انستجرام داكن
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed, // عشان كل الأيقونات تظهر
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false, // زي انستجرام مفيش نص
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, size: 30),
            activeIcon: Icon(Icons.add_box, size: 30),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/Avatar (Me).png'),
            ),
            activeIcon: CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/Avatar (Me).png'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
