import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/login/login_screen.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgUrl: "imagelogo.png"),
            UiHelper.CustomImage(imgUrl: "Instagram Logo.png"),
          ],
        ),
      ),
    );
  }
}
