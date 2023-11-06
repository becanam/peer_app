import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32DACE),
      body: Center(
          child: Text(
        "This is your Profile",
        style: appstyle(40, Colors.black, FontWeight.bold),
      )),
    );
  }
}