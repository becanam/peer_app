import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32DACE),
      body: Center(
          child: Text(
        "This is Board",
        style: appstyle(40, Colors.black, FontWeight.bold),
      )),
    );
  }
}
