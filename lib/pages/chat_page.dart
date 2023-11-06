import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32DACE),
      body: Center(
          child: Text(
        "This is Chat Page",
        style: appstyle(40, Colors.black, FontWeight.bold),
      )),
    );
  }
}
