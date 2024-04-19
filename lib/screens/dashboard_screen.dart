import 'package:class_app/screens/add_two_numbers.dart';
import 'package:class_app/screens/simple_interest_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddTwoNums()),
                    );
                  }, child: Text("Arthemetic Screen"))),
              SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SimpleInterestScreen()),
                    );
                  }, child: Text("Simple interest"))),
            ],
          ),
        ),
      ),
    );
  }
}
