
import 'package:flutter/material.dart';

class HotPostsWidget extends StatelessWidget {
  const HotPostsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 0.05),
      child: Container(
        padding: const EdgeInsets.all(1),
        child: SizedBox(
          height: 245,
          width: 400,
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xff32DACE),
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
        ),
      ),
    );
  }
}