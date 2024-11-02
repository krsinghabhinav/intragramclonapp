import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/messages/messages_screen.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var storyImage = [
    {'img': "assets/images/s1.png", 'name': "Aksingh"},
    {'img': "assets/images/s2.png", 'name': "Abhi"},
    {'img': "assets/images/s3.png", 'name': "Rahul"},
    {'img': "assets/images/s4.png", 'name': "Mukesh"},
    {'img': "assets/images/s5.png", 'name': "Ravi"},
    {'img': "assets/images/s6.png", 'name': "Radha"},
    {'img': "assets/images/s7.png", 'name': "Krishna"},
    {'img': "assets/images/s8.png", 'name': "Awanish"},
    {'img': "assets/images/s9.png", 'name': "Ankit"},
    {'img': "assets/images/s10.png", 'name': "Anshika"},
    {'img': "assets/images/s11.png", 'name': "Parul"},
    {'img': "assets/images/s6.png", 'name': "Girisha"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFF121212),
        leading: UiHelper.CustomImage(imgUrl: "Camera Icon.png"),
        title: UiHelper.CustomImage(imgUrl: "Instagram Logo (1).png"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgUrl: "IGTV.png"),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagesScreen()));
            },
            icon: UiHelper.CustomImage(imgUrl: "Messanger.png"),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130, // Set a fixed height for the story section
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: storyImage.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 44,
                              backgroundColor:
                                  const Color.fromARGB(255, 250, 135, 27),
                              child: CircleAvatar(
                                radius: 42,
                                foregroundImage: AssetImage(
                                    storyImage[index]['img'].toString()),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text(storyImage[index]['name'].toString()),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                height: 54,
                width: 375,
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 32,
                    foregroundImage: AssetImage("assets/images/s2.png"),
                    // backgroundColor: Colors.amber,
                  ),
                  title: Text("Abhinav"),
                  subtitle: Text("i am from mirzapur"),
                  trailing: Icon(Icons.more_horiz_outlined),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 375,
                width: 375,
                child: Image.asset(
                  "assets/images/s3.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 40,
                width: 375,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.comment_outlined,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.share_rounded,
                        size: 35,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bookmark_outline,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 54,
                width: 375,
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage("assets/images/s2.png"),
                    // backgroundColor: Colors.amber,
                  ),
                  title: Text("Liked by sujal_dave and 44,686 others"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Text(
                    "sujal_dave The game in Japan was amazing and I want to share some photos"),
              ),
              Container(
                height: 54,
                width: 375,
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 32,
                    foregroundImage: AssetImage("assets/images/h1.png"),
                    // backgroundColor: Colors.amber,
                  ),
                  title: Text("Abhinav"),
                  subtitle: Text("i am from mirzapur"),
                  trailing: Icon(Icons.more_horiz_outlined),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 375,
                width: 375,
                child: Image.asset(
                  "assets/images/h5.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 40,
                width: 375,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.comment_outlined,
                        size: 35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.share_rounded,
                        size: 35,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bookmark_outline,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 54,
                width: 375,
                color: Colors.black12,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage("assets/images/h3.png"),
                    // backgroundColor: Colors.amber,
                  ),
                  title: Text("Liked by sujal_dave and 44,686 others"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 4),
                child: Text(
                    "sujal_dave The game in Japan was amazing and I want to share some photos"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
