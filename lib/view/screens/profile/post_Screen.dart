import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  var postimage = [
    {'img': "assets/images/s1.png"},
    {'img': "assets/images/s2.png"},
    {'img': "assets/images/s3.png"},
    {'img': "assets/images/s4.png"},
    {'img': "assets/images/s5.png"},
    {'img': "assets/images/s6.png"},
    {'img': "assets/images/s7.png"},
    {'img': "assets/images/s8.png"},
    {'img': "assets/images/s9.png"},
    {'img': "assets/images/s10.png"},
    {'img': "assets/images/s11.png"},
    {'img': "assets/images/s6.png"},
    {'img': "assets/images/s7.png"},
    {'img': "assets/images/s8.png"},
    {'img': "assets/images/s9.png"},
    {'img': "assets/images/s10.png"},
    {'img': "assets/images/s11.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Container(
          height: 124,
          width: 124,
          child: Image.asset(postimage[index]['img'].toString()),
        );
      },
      itemCount: postimage.length,
    );
  }
}
