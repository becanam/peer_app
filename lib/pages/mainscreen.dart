import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yonsei_project/controllers/mainscreen_provider.dart';
import 'package:yonsei_project/pages/board_page.dart';
import 'package:yonsei_project/pages/chat_page.dart';
import 'package:yonsei_project/pages/homepage.dart';
import 'package:yonsei_project/pages/people_page.dart';
import 'package:yonsei_project/pages/profile_page.dart';
import 'package:yonsei_project/utilities/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = const [
    HomePage(),
    BoardPage(),
    PeoplePage(),
    ChatPage(),
    ProfilePage()
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


