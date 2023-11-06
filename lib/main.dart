import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yonsei_project/controllers/mainscreen_provider.dart';
import 'pages/mainscreen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MainScreenNotifier())
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}