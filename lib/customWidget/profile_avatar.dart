import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class ProfileAvater extends StatelessWidget {
  final String image;

  const ProfileAvater({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(3.5),
        child: CircleAvatar(
            backgroundImage: Image.network(
          image,
          fit: BoxFit.contain,
        ).image),
      ),
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.height * 0.13,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient:
              LinearGradient(colors: [blueColor, pinkColor, orangeColor])),
    );
  }
}
