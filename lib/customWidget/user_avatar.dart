import 'package:dotun_app/customWidget/custom_avatar.dart';
import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          CustomAvatar(
            image: userImage,
            showGradient: false,
          ),
          Transform.translate(
              offset: Offset(
                MediaQuery.of(context).size.height * 0.03,
                MediaQuery.of(context).size.height * 0.07,
              ),
              child: plusBtn())
        ],
      ),
    );
  }

  Widget plusBtn() {
    return Container(
      height: 16,
      width: 16,
      child: Center(
          child: Icon(
        Icons.add,
        color: Colors.white,
        size: 12,
      )),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            blueColor,
            pinkColor,
            pinkColor,
            pinkColor,
          ])),
    );
  }
}

const userImage =
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80";

const friendsmage =
    "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80";
