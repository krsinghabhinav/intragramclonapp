import 'package:flutter/material.dart';

import 'package:intragramclonapp/view/widgets/uihelper.dart';

import 'follow_followe.dart/followers.dart';
import 'follow_followe.dart/following.dart';
import 'post_Screen.dart';
import 'tag_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var profileContent = [
    {
      'img': "assets/images/s1.png",
      'name': "Aksingh",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s2.png",
      'name': "Abhi",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s3.png",
      'name': "Rahul",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s4.png",
      'name': "Mukesh",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s5.png",
      'name': "Ravi",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s6.png",
      'name': "Radha",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s7.png",
      'name': "Krishna",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s8.png",
      'name': "Awanish",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s9.png",
      'name': "Ankit",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s10.png",
      'name': "Anshika",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s11.png",
      'name': "Parul",
      "lastmeg": "Have a nice day, bro!"
    },
    {
      'img': "assets/images/s6.png",
      'name': "Girisha",
      "lastmeg": "Have a nice day, bro!"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Icon(Icons.lock),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Abhinav_singh")
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: double.infinity,
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: AssetImage("assets/images/h4.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostPage()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "54",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Post")
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Followers()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "850",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Followers"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Following()),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "165",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Following")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abhinav Singh",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Digital goodies designer @pixsellz ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Everything is designed.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: const Color.fromARGB(255, 87, 86, 86))),
                child: Center(
                    child: Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.grey.shade700,
                      child: Icon(
                        Icons.add,
                        size: 45,
                      ),
                    ),
                    Text("New")
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height:
                        120, // or any fixed height based on your requirement
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,
                                foregroundImage: AssetImage(
                                    profileContent[index]['img'].toString()),
                              ),
                              Text(profileContent[index]['name'].toString())
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50, // Height adjusted to fit AppBar with TabBar
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      icon: UiHelper.CustomImage(imgUrl: "Grid Icon.png"),
                    ),
                    Tab(
                      icon: UiHelper.CustomImage(imgUrl: "Tags Icon.png"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [PostPage(), TagScreen()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
