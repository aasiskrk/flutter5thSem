import 'package:class_app/screens/add_two_numbers.dart';
import 'package:class_app/screens/area_circle_screen.dart';
import 'package:class_app/screens/dashboard_screen.dart';
import 'package:class_app/screens/hellow_world_screen.dart';
import 'package:class_app/screens/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AreaCircle(),
    );
  }
}
