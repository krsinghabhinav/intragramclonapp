import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostSccreen extends StatefulWidget {
  const PostSccreen({super.key});

  @override
  State<PostSccreen> createState() => _PostSccreenState();
}

class _PostSccreenState extends State<PostSccreen> {
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF121212),
        centerTitle: true,
        title: Text("Post"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    XFile? file =
                        await imagePicker.pickImage(source: ImageSource.camera);
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () async {
                    XFile? file = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                  },
                  icon: Icon(
                    Icons.photo,
                    size: 40,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
