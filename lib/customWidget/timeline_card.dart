import 'package:dotun_app/customWidget/custom_avatar.dart';
import 'package:flutter/material.dart';

import 'user_avatar.dart';

class TimeLineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CustomAvatar(
              image: friendsmage,
              showGradient: false,
            ),
            title: Text(
              "Maoo.lopez",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Hace 20min"),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.network(
                      timeLineImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                right: 25, //give the values according to your requirement
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    color: Colors.black12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "   1/1   ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 25, //give the values according to your requirement
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0)),
                        color: Colors.grey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "4,558",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                right: 25, //give the values according to your requirement
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 14.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    discription,
                    style: TextStyle(fontSize: 10.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: RichText(
                    text: TextSpan(
                        text: "SACRIFICE | VIRUS ",
                        children: [
                          TextSpan(
                              text:
                                  "this photomanipulation inspired in the virus",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10)),
                        ],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    commentCount,
                    style: TextStyle(fontSize: 10.0, color: Color(0xFFA3A3A3)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Perla_Pipol ",
                        children: [
                          TextSpan(
                              text: "Esta edición está super genial, que pro!!",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10)),
                        ],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                offset: Offset(4, 4),
                color: Color.fromRGBO(0, 0, 0, 0.3))
          ]),
    );
  }
}

const timeLineImage =
    "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Flaurabegleybloom%2Ffiles%2F2018%2F06%2FCappadocia-by-%40izkiz-1200x801.jpg";

const discription = "Les gusta a danieldelax y 4,588 personas más";

const commentCount = "Over 500 comments";
