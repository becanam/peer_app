import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MentorCard extends StatelessWidget {
  final Mentor mentor;
  final VoidCallback? onTap;
  const MentorCard({Key? key, required this.mentor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 4.0,
                    spreadRadius: 05,
                  )
                ],
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
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(top: 18, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("이름: ${mentor.name}",
                                  style: appstyle(
                                      13, Colors.black, FontWeight.bold,
                                      height: 1.6)),
                              Text("나이: ${mentor.age.toString()}",
                                  style: appstyle(
                                      13, Colors.black, FontWeight.bold,
                                      height: 1.6)),
                              Text("직업: ${mentor.job}",
                                  softWrap: true,
                                  maxLines: 2,
                                  style: appstyle(
                                      13, Colors.black, FontWeight.bold,
                                      height: 1.6)),
                            ],
                          )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 9,
                    right: 20,
                    left: 20,
                    bottom: 9
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Text(mentor.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: appstyle(14, Color.fromARGB(255, 46, 45, 45), FontWeight.normal, height: 1.3),),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        color: const Color(0xff32DACE),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 0.6, color: Colors.black)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "매칭되었습니다!",
                            style:
                                appstyle(13, Colors.black, FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
