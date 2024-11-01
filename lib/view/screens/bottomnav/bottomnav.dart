import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/heart/heart_screen.dart';
import 'package:intragramclonapp/view/screens/home/home_screen.dart';
import 'package:intragramclonapp/view/screens/post/post_sccreen.dart';
import 'package:intragramclonapp/view/screens/profile/profile_screen.dart';
import 'package:intragramclonapp/view/screens/search/search_screen.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostSccreen(),
    HeartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 0) {
          setState(() {
            currentIndex = 0;
          });
          return false; // Prevents exiting the app
        }
        return true; // Allows back navigation to exit the app if on index 0
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // backgroundColor: Colors.black,
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_app), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: 'Heart'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          ],
        ),
        body: IndexedStack(
          children: pages,
          index: currentIndex,
        ),
      ),
    );
  }
}
