import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/Assets.dart';
import 'package:instagram/Features/Home/Presentation/Views/HomeView.dart';
import 'package:instagram/Features/Home/Presentation/Widgets/User_Avatar.dart';
import 'package:instagram/Profile_View.dart';
import 'package:instagram/Reels_View.dart';
import 'package:instagram/Search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Homeview(),
    SearchView(),
    ReelsView(),
    ProfileView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade700, width: .5),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff0C0F14),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.Homeicon,
                height: 28,
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                Assets.ActiveHomeicon,
                height: 28,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.Searchicon,
                height: 28,
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                Assets.ActiveSearchicon,
                height: 28,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.AddBost,
                height: 28,
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                Assets.AddBost,
                height: 28,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                Assets.reelsicon,
                height: 28,
                color: Colors.white,
              ),
              activeIcon: Image.asset(
                Assets.ActiveReels,
                height: 28,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: User_Avatar(
                  Fpadding: 0,
                  Spadding: 3,
                  imageraduis: 14,
                  colors: [Color(0xff00da00), Color(0xff00da00)],
                  Avatar_image: Assets.user2image),
              activeIcon: User_Avatar(
                  Fpadding: 0,
                  Spadding: 3,
                  imageraduis: 14,
                  colors: [Color(0xff00da00), Color(0xff00da00)],
                  Avatar_image: Assets.user2image),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
