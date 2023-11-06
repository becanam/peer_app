import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yonsei_project/controllers/mainscreen_provider.dart';
import 'package:yonsei_project/utilities/bottom_nav_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavWidget(
                    onTap: () {
                      mainScreenNotifier.pageIndex = 0;
                    },
                    color: mainScreenNotifier.pageIndex == 0
                        ? Colors.white
                        : Colors.grey,
                    icon: Icons.home_rounded),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 1;
                  },
                  color: mainScreenNotifier.pageIndex == 1
                      ? Colors.white
                      : Colors.grey,
                  icon: Icons.article_rounded,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 2;
                  },
                  color: mainScreenNotifier.pageIndex == 2
                      ? Colors.white
                      : Colors.grey,
                  icon: Icons.groups_rounded,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 3;
                  },
                  color: mainScreenNotifier.pageIndex == 3
                      ? Colors.white
                      : Colors.grey,
                  icon: Icons.chat_rounded,
                ),
                BottomNavWidget(
                  onTap: () {
                    mainScreenNotifier.pageIndex = 4;
                  },
                  color: mainScreenNotifier.pageIndex == 4
                      ? Colors.white
                      : Colors.grey,
                  icon: Icons.person_rounded,
                ),
              ],
            ),
          ),
        ));
      },
    );
  }
}
