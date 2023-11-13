import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MenteesListView extends StatelessWidget {
  final Mentor mentor;
  const MenteesListView({
    super.key,
    required this.mentor,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15
        ),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: mentorsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff32DACE),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 4.0,
                          spreadRadius: 0.5,
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 46,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(mentorsList[index].profilepic),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Chip(
                                label: Text("매칭 요청",
                                    style: appstyle(
                                        15, Colors.black, FontWeight.bold,
                                        height: 1.5)),
                                backgroundColor: Colors.white,
                                elevation: 3,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("이름: ${mentorsList[index].name}",
                                      style: appstyle(13, Colors.black, FontWeight.bold,
                                          height: 1.6)),
                                  Text("나이: ${mentorsList[index].age.toString()}",
                                      style: appstyle(13, Colors.black, FontWeight.bold,
                                          height: 1.6)),
                                  Text("직업: ${mentorsList[index].job}",
                                      softWrap: true,
                                      maxLines: 2,
                                      style: appstyle(13, Colors.black, FontWeight.bold,
                                          height: 1.6)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(mentorsList[index].description,
                                    overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: appstyle(13, Colors.black, FontWeight.normal,
                                            height: 1.6)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
