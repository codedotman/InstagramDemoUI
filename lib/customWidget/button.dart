import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      child: Center(
          child: Text(
        "Post",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            pinkColor,
            pinkColor,
            pinkColor,
            blueColor,
          ])),
    );
  }
}
