import 'package:flutter/material.dart';

class Interest {
  String label;
  IconData icon;

  Interest({
    required this.label,
    required this.icon,
  });
}

List<Interest> interestsList = [
  Interest(label: "Finance", icon: Icons.monetization_on_rounded),
  Interest(label: "Education", icon: Icons.school_rounded),
  Interest(label: "Investing", icon: Icons.show_chart_rounded),
  Interest(label: "Communication", icon: Icons.people_outline_rounded),
  Interest(label: "Sports", icon: Icons.sports_soccer_rounded),
  Interest(label: "Technology", icon: Icons.computer_rounded),
  Interest(label: "Legal Rights", icon: Icons.cases_rounded),
  Interest(label: "Self Development", icon: Icons.nature_rounded),
];
