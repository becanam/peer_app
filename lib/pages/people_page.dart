import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff32DACE),
      body: Center(
          child: Text(
        "This is People's Page",
        style: appstyle(40, Colors.black, FontWeight.bold),
      )),
    );
  }
}
