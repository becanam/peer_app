import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/boards_view.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 234, 234),
      body: 
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: Text("BOARDS",
                style: appstyle(20, Colors.black, FontWeight.bold)),
              ),
              const Expanded(child: BoardsView()),
            ],
          ),
        ),
      ),
    );
  }
}
