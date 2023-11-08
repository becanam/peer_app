import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MentorCard extends StatelessWidget {

final Mentor mentor;
const MentorCard({Key? key, required this.mentor}) : super(key: key);
 
 @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              color: const Color(0xff32DACE),
              border: Border.all(width: 0.8, color: Colors.black),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(95),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: CircleAvatar(
                      radius: 46,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(mentor.profilepic),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 18, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("이름: ${mentor.name}",
                              style: appstyle(13, Colors.black, FontWeight.w600,
                                  height: 1.6)),
                          Text("나이: ${mentor.age.toString()}",
                              style: appstyle(13, Colors.black, FontWeight.w600,
                                  height: 1.6)),
                          Text("직업: ${mentor.job}",
                              style: appstyle(13, Colors.black, FontWeight.w600,
                                  height: 1.6)),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              InkWell(
                child: Container(
                  height: 30,
                  width: 170,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 187, 235, 232),
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(width: 0.6, color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Start a Chat!",
                          style: appstyle(13, Colors.black, FontWeight.normal),
                        ),
                        const Icon(
                          Icons.chat_bubble_outline_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
