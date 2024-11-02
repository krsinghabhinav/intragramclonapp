import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  var followContent = [
    {
      'img': "assets/images/s1.png",
      'name': "karennne liked 3 posts. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s2.png",
      'name': "kiero_d, zackjohn and craig_love liked joshua_l photo. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s3.png",
      'name': "kiero_d started following craig_love. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s4.png",
      'name': "craig_love liked 8 posts. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s5.png",
      'name': "maxjacobson and zackjohn liked mis_potter’s post. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s6.png",
      'name': "maxjacobson and craig_love liked martini_rond’s post. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s7.png",
      'name': "karennne liked martini_rond’s comment: @martini_rond Nice! 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s8.png",
      'name': "maxjacobson liked 3 posts. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s9.png",
      'name': "The new design looks cool, b…",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s11.png",
      'name': "Yeap, I'm going to travel in To…",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s6.png",
      'name': "maxjacobson liked 3 posts. 3h",
      "lastmeg": "Have a nice day, bro!"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 15),
              child: Text(
                "All Following", // Your desired text
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 236,
              child: ListView.builder(
                  itemCount: followContent.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: ClipOval(
                          child: Image.asset(
                              followContent[index]['img'].toString())),
                      title: Text(followContent[index]['name'].toString(),
                          style: TextStyle(fontSize: 14)),
                      trailing: Image.asset(
                        followContent[index]['img'].toString(),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
