import 'package:flutter/material.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/screens/home_page.dart';
import 'package:skygoal_internship_assignment_rudransh_singh/screens/home_page_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
