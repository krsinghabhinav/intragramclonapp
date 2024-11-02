import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/screens/bottomnav/bottomnav.dart';
import 'package:intragramclonapp/view/screens/home/home_screen.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  var messContent = [
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF121212),
        elevation: 2,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bottomnav(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text('abhinav_singh'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFF121212),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0XFF8E8E93),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Color(0XFF8E8E93)),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messContent.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 32, // Adjust the radius as needed
                      backgroundImage:
                          AssetImage(messContent[index]["img"].toString()),
                    ),
                    title: Text(messContent[index]["name"].toString()),
                    subtitle: Row(
                      children: [
                        Text(messContent[index]["lastmeg"].toString()),
                        Spacer(),
                        Text(".now"),
                      ],
                    ),
                    trailing: Icon(Icons.camera_alt_outlined), // Example title
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 10),
              Text(
                'Camera',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
