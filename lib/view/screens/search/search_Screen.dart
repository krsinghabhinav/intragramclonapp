import 'package:flutter/material.dart';
import 'package:intragramclonapp/view/widgets/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> categoryList = [
    'IGTV',
    'TV',
    'Shop',
    'Style',
    'Sport',
    'Auto',
    'Food',
    'Drawing',
    'Guitar',
  ];

  var localImage = [
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10),
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
                    contentPadding: EdgeInsets.symmetric(vertical: 5),
                  ),
                ),
              ),
              SizedBox(width: 15),
              UiHelper.CustomImage(imgUrl: "Live.png"),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 40,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Colors.white),
                            SizedBox(width: 4),
                            Text(
                              categoryList[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              itemCount: localImage.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  height: 124,
                  width: 124,
                  child: Image.asset(
                    localImage[index]['img']!,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
