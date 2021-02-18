import 'package:dotun_app/themes/style.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final String image;
  final bool showGradient;

  const CustomAvatar({Key key, this.image, this.showGradient = true})
      : super(key: key);
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
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: showGradient
              ? LinearGradient(colors: [blueColor, pinkColor, orangeColor])
              : null),
    );
  }
}
