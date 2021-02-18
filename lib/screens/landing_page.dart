import 'package:dotun_app/screens/my_home_page.dart';
import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundLander,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 37.0),
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                      fontFamily: "Billabong",
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            // CustomButton()
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Container(
                height: 40,
                child: Center(
                    child: Text(
                  "LOGIN WITH GOOGLE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFF2E384D)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
