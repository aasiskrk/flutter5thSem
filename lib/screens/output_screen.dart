import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int index;

  const OutputScreen({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Showing Value"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [Text('the value is ${index} ')],
      ),
    );
  }
}
