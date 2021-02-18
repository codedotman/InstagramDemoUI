import 'package:dotun_app/customWidget/custom_avatar.dart';
import 'package:dotun_app/customWidget/user_avatar.dart';
import 'package:flutter/material.dart';

class ContactAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomAvatar(
            image: friendsmage,
          ),
          Text("Nkechi")
        ],
      ),
    );
  }
}
