
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key, this.onTap, this.icon, this.color
  });

  final void Function()? onTap;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,

        child: Icon(icon, 
        color: color,
        size: 35,
        ),
      ),
    );
  }
}