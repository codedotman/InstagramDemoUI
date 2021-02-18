import 'package:dotun_app/customWidget/contact_avatar.dart';
import 'package:dotun_app/customWidget/timeline_card.dart';
import 'package:dotun_app/customWidget/user_avatar.dart';
import 'package:dotun_app/screens/profile_detail_page.dart';
import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLander,
      appBar: AppBar(
        backgroundColor: backgroundLander,
        centerTitle: true,
        leading: Icon(Icons.add),
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 40,
            fontFamily: "Billabong",
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          Icon(
            Icons.message,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: getUpdateStories(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Explorar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileDetailPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TimeLineCard(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  getUpdateStories() {
    List<Widget> stories = [];
    stories.add(UserAvatar());
    stories.addAll(List.generate(8, (i) => ContactAvatar()));

    return stories;
  }
}
