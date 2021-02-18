import 'package:dotun_app/customWidget/button.dart';
import 'package:dotun_app/customWidget/contact_avatar.dart';
import 'package:dotun_app/customWidget/profile_avatar.dart';
import 'package:dotun_app/customWidget/user_avatar.dart';
import 'package:dotun_app/screens/post_list_view.dart';
import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  final List<String> images = [
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
    "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
    "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
    "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
    "https://www.galeanasvandykedodge.net/assets/stock/ColorMatched_01/White/640/cc_2018DOV170002_01_640/cc_2018DOV170002_01_640_PSC.jpg",
    "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
    "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          offset: Offset(4, 4),
                          color: Color.fromRGBO(0, 0, 0, 0.3))
                    ]),
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.add),
                          ProfileAvater(
                            image: userImage,
                          ),
                          Icon(
                            Icons.message,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "App Lopez",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Diseño ui/ux y Fotografia, Mexico",
                        style: TextStyle(color: Colors.black, fontSize: 10)),
                    Text("#LifeStyle #Design #Photography #Urban #Art",
                        style:
                            TextStyle(color: Color(0xff515BD4), fontSize: 10)),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          numPlaceHolder(number: "23455", subtitle: "Post"),
                          numPlaceHolder(number: "456", subtitle: "Followers"),
                          numPlaceHolder(number: "333", subtitle: "Following")
                        ],
                      ),
                    ),
                    CustomButton(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: getUpdateStories(),
                ),
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.red,
                tabs: [
                  Tab(
                      icon: Text(
                    "Post",
                    style: style,
                  )),
                  Tab(
                      icon: Text(
                    "Videos",
                    style: style,
                  )),
                  Tab(
                      icon: Text(
                    "IGTV",
                    style: style,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PostListView(
                      images: images,
                    ),
                    PostListView(
                      images: images,
                    ),
                    PostListView(
                      images: images,
                    ),
                  ],
                ),
              )
            ],
          ),
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

  get style =>
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black);
  numPlaceHolder({String number, String subtitle}) => Column(
        children: [
          Text(
            number,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Color(0xFFA3A3A3)),
          )
        ],
      );
}
