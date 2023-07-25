import 'package:flutter/material.dart';

import 'package:pract_project/homepage.dart';

void main() {
  runApp(const PractApp());
}

class PractApp extends StatelessWidget {
  const PractApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomepage(),
    );
  }
}
