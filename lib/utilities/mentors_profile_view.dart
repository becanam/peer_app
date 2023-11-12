import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yonsei_project/controllers/mainscreen_provider.dart';
import 'package:yonsei_project/pages/mentor_profile_screen.dart';
import 'package:yonsei_project/utilities/interests_list.dart';
import 'package:yonsei_project/utilities/mentors_card.dart';
import 'package:yonsei_project/utilities/mentors_list.dart';

class MentorsProfiles extends StatelessWidget {
  const MentorsProfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.005),
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.builder(
                  itemCount: mentorsList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MentorCard(
                        mentor: mentorsList[index],
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MentorProfileScreen(
                                    mentor: mentorsList[index], 
                                    interest: interestsList[index]))));
                  }),
            )
          ]),
        ),
      );
    });
  }
}
