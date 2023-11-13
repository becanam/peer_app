import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/hot_posts_list.dart';
import '../utilities/hot_posts_widget.dart';
import '../utilities/mentors_profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 234, 234),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //peer text
                    Text(
                      "PEER",
                      style: appstyle(30, Colors.black, FontWeight.normal),
                    ),

                    const SizedBox(
                      width: 210,
                      height: 30,
                    ),

                    //settings icon
                    CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.1),
                      radius: 24,
                      child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 22,
                          child: Icon(
                            Icons.settings_rounded,
                            color: Colors.black,
                            size: 35,
                          )),
                    ),

                    //notification icon
                    CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.1),
                      radius: 24,
                      child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 22,
                          child: Icon(
                            Icons.notifications_rounded,
                            color: Colors.black,
                            size: 35,
                          )),
                    )
                  ],
                ),
              ),

              //my mentors text
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "My Mentors >",
                    style: appstyle(30, Colors.black, FontWeight.w600),
                  ),
                ]),
              ),

              //mentors' profiles
              MentorsProfiles(),

              //hot posts text
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 22,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "HOT 계시판 >",
                    style: appstyle(30, Colors.black, FontWeight.w600),
                  ),
                ]),
              ),

              //hot posts
              HotPostsWidget(hotpost: hotPostsList[0])
            ],
          ),
        ));
  }
}