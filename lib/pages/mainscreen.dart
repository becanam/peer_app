import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yonsei_project/controllers/mainscreen_provider.dart';
import 'package:yonsei_project/pages/board_page.dart';
import 'package:yonsei_project/pages/chat_page.dart';
import 'package:yonsei_project/pages/homepage.dart';
import 'package:yonsei_project/pages/people_page.dart';
import 'package:yonsei_project/pages/profile_page.dart';
import 'package:yonsei_project/utilities/bottom_nav.dart';
import 'package:yonsei_project/utilities/interests_list.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = [
    HomePage(),
    BoardPage(),
    PeoplePage(),
    ChatPage(),
    ProfilePage(mentor: mentorsList[0], interest: interestsList[0],)
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomNavBar(),
      );
    });
  }
}


