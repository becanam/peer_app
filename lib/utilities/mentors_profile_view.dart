import 'package:flutter/material.dart';

class MentorsProfiles extends StatelessWidget {
  const MentorsProfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.005),
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color(0xff32DACE),
                        borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)
                              )),
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}