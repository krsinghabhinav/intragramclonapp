import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class YouScreen extends StatefulWidget {
  const YouScreen({super.key});

  @override
  State<YouScreen> createState() => _YouScreenState();
}

class _YouScreenState extends State<YouScreen> {
  var youmessContent = [
    {
      'img': "assets/images/Oval.png",
      'name': "martini_rond started following you. 3d",
      "mess": "Message"
    },
    {
      'img': "assets/images/Oval (1).png",
      'name': "maxjacobson started following you. 3d",
      "mess": "Message"
    },
  ];
  var youFollContent = [
    {
      'img': "assets/images/Oval (2).png",
      'name': "mis_potter started following you. 3d",
      "mess": "Follow"
    },
    {
      'img': "assets/images/Oval (1).png",
      'name': "mis_potter started following you. 3d",
      "mess": "Follow"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Follow Requests",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 5),
          buildNotificationSection(
              "New", "h3.png", "karennne liked your photo. 1h", "h5.png"),
          SizedBox(height: 5),
          buildNotificationSection("Today", "s7.png",
              "kiero_d, zackjohn and 26 others liked your photo. 3h", "s3.png"),
          SizedBox(height: 5),
          buildNotificationSection(
              "This Week",
              "s8.png",
              "craig_love mentioned you in a comment: @jacob_w exactly..",
              "s11.png"),
          SizedBox(height: 5),
          buildFollowSection(),
          SizedBox(height: 5),
          buildSection(),
          SizedBox(height: 5),
          buildNotificationSection("This Week", "s8.png",
              "craig_love mentioned you in a comment", "s11.png"),
          SizedBox(height: 5),
          buildFollowSection(),
        ],
      ),
    );
  }

  Widget buildNotificationSection(
      String title, String leadingImg, String message, String trailingImg) {
    return Container(
      color: const Color.fromARGB(255, 19, 19, 19),
      height: 110,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          ListTile(
            leading: ClipOval(
              child: UiHelper.CustomImage(
                imgUrl: leadingImg,
              ),
            ),
            title: Text(message, style: TextStyle(fontSize: 14)),
            trailing: UiHelper.CustomImage(
              imgUrl: trailingImg,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFollowSection() {
    return Container(
      height: 120, // Adjust height as needed
      child: ListView.builder(
        physics:
            NeverScrollableScrollPhysics(), // Prevent scrolling within this section
        shrinkWrap: true, // Make ListView take up only the required space
        itemCount: youmessContent.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ClipOval(
                child: Image.asset(youmessContent[index]["img"].toString())),
            title: Text(
              youmessContent[index]["name"].toString(),
              style: TextStyle(fontSize: 14),
            ),
            trailing: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade700),
              ),
              child: Center(
                child: Text(
                  youmessContent[index]["mess"].toString(),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildSection() {
    return Container(
      height: 120, // Adjust height as needed
      child: ListView.builder(
        physics:
            NeverScrollableScrollPhysics(), // Prevent scrolling within this section
        shrinkWrap: true, // Make ListView take up only the required space
        itemCount: youFollContent.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ClipOval(
                child: Image.asset(youFollContent[index]["img"].toString())),
            title: Text(
              youFollContent[index]["name"].toString(),
              style: TextStyle(fontSize: 14),
            ),
            trailing: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade700),
              ),
              child: Center(
                child: Text(
                  youFollContent[index]["mess"].toString(),
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
