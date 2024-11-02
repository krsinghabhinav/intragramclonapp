import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/heart/following_screen.dart';
import 'package:intragramclonapp/view/screens/heart/you_screen.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({super.key});

  @override
  State<HeartScreen> createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ]),
          ),
          body: TabBarView(children: [
            FollowingScreen(),
            YouScreen(),
          ]),
        ));
  }
}
