import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/certificate_card.dart';
import 'package:yonsei_project/utilities/certificates_list.dart';
import 'package:yonsei_project/utilities/custom_icon_button.dart';
import 'package:yonsei_project/utilities/interests_list.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MentorProfileScreen extends StatelessWidget {
  final Mentor mentor;
  final Interest interest;
  const MentorProfileScreen(
      {Key? key, required this.mentor, required this.interest})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 237, 234, 234),
          child: SafeArea(
              child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 270,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 237, 234, 234),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 170,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        blurRadius: 2.0,
                        spreadRadius: 1)
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: const Color(0xff32DACE)),
                  
            ),
          ),
          Positioned(
            height: 150,
            width: 150,
            top: 90,
            left: 137,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      blurRadius: 2.0,
                      spreadRadius: 1)
                ],
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(mentor.profilepic)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            onTap: () => Navigator.pop(context),
                            child: const Icon(Icons.arrow_back),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Align(
                              child: Text(
                                "Home",
                                style: appstyle(20, Colors.black, FontWeight.bold,
                                    height: 0.3),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 240,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(mentor.name,
                        style: appstyle(
                          24,
                          Colors.black,
                          FontWeight.bold,
                        )),
                    Row(
                      children: [
                        const Icon(Icons.verified_rounded, size: 28),
                        Text("멘토",
                            style: appstyle(20, Colors.black, FontWeight.normal,
                                height: 1.5))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(mentor.username,
                        style: appstyle(14, Colors.black, FontWeight.normal)),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("About",
                        style: appstyle(20, Colors.black, FontWeight.bold)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    child: SizedBox(
                      height: 130,
                      width: 400,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4.0,
                                spreadRadius: 05,
                              )
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Scrollbar(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical, //.horizontal
                                child: Text(
                                  mentor.description,
                                  style: appstyle(
                                      14, Colors.black, FontWeight.normal,
                                      height: 1.5),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Interests",
                        style: appstyle(20, Colors.black, FontWeight.bold)),
                  ],
                ),
        
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: interestsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final interest = interestsList[index];
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Chip(
                          labelPadding: const EdgeInsets.all(2),
                          label: Text(interest.label),
                          avatar: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(interest.icon,
                            color: Colors.black,),
                          ),
                          backgroundColor: Colors.white,
                          elevation: 3,
                          ));
                    }),
                ),
        
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text("Certificates",
                        style: appstyle(20, Colors.black, FontWeight.bold)),
                  ],
                ),
        
                Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
          child: Container(
            padding: const EdgeInsets.only(left: 15),
            child: Column(children: [
              SizedBox(
                height: 185,
                child: ListView.builder(
                    itemCount: certificateList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CertificateCard(
                          certificate: certificateList[index]);
                    }),
              )
            ]),
          ),
              ),
        
              ],
            ),
          ),
              ]),
            ),
        ));
  }
}
