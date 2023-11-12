import 'package:flutter/material.dart';
import 'package:yonsei_project/utilities/appstyle.dart';
import 'package:yonsei_project/utilities/hot_posts_list.dart';

class HotPostsWidget extends StatelessWidget {
  final HotPost hotpost;
  const HotPostsWidget({
    super.key,
    required this.hotpost,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0.05),
      child: Container(
        padding: const EdgeInsets.all(1),
        child: SizedBox(
          height: 300,
          width: 400,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 4.0,
                    spreadRadius: 05,
                  )
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.005),
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                      itemCount: hotPostsList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            color: const Color(0xff32DACE),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: RichText(
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                        text: "${hotPostsList[index].type} \n",
                                        style: appstyle(
                                            18, Colors.black, FontWeight.bold, height: 1.5),
                                        children: [
                                          TextSpan(
                                            text: hotPostsList[index].content,
                                            style: appstyle(14, Colors.black,
                                                FontWeight.normal, height: 1.6),
                                          )
                                        ])),
                                subtitle: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        hotPostsList[index].name,
                                        style: appstyle(10, Colors.grey.shade800,
                                            FontWeight.normal),
                                      ),
                                      Text(
                                        hotPostsList[index].url,
                                        style: appstyle(10, Colors.grey.shade800,
                                            FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
            ),
          ),
        ),
      ),
    );
  }
}
