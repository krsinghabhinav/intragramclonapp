import 'package:flutter/material.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    var followingContent = [
      {
        'img': "assets/images/Oval.png",
        'til': "nnk528",
        "subtil": "Naitik",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (1).png",
        'til': "kosingh6301",
        "subtil": "Komal Singh",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (2).png",
        'til': "akashkumar816",
        "subtil": "Akash kamal",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval.png",
        'til': "afafafasf",
        "subtil": "fafafafasfasf",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (1).png",
        'til': "fafdfewrwcs",
        "subtil": "rtewefer",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (2).png",
        'til': "jgbgdg",
        "subtil": "uytyngd",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval.png",
        'til': "nbnvcv",
        "subtil": "swessd",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (1).png",
        'til': "bmbuygh",
        "subtil": "awqsssd",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (2).png",
        'til': "mmnncn",
        "subtil": "ppsdos",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval.png",
        'til': "rtrtrr",
        "subtil": "yuyuyurt",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (1).png",
        'til': "wwewwr",
        "subtil": "iouiu",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (2).png",
        'til': "dfsdsdgfg",
        "subtil": "lkljkj",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval.png",
        'til': "oljioiu",
        "subtil": "ojiooiow",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (1).png",
        'til': "wytyweywu",
        "subtil": "opiewy",
        "mess": "Message"
      },
      {
        'img': "assets/images/Oval (2).png",
        'til': "bscbzvc",
        "subtil": "mkzzc",
        "mess": "Message"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Following")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "All Following", // Your desired text
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 150,
              child: ListView.builder(
                itemCount: followingContent.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: ClipOval(
                      child: Image.asset(
                          followingContent[index]["img"].toString()),
                    ),
                    title: Text(
                      followingContent[index]["til"].toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      followingContent[index]["subtil"].toString(),
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
                          followingContent[index]["mess"].toString(),
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
