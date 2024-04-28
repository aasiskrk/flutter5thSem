import 'package:class_app/common/snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatefulWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  State<FlexibleExpandedScreen> createState() => _FlexibleExpandedScreenState();
}

class _FlexibleExpandedScreenState extends State<FlexibleExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                alignment: Alignment.center,
                color: Colors.amberAccent,
                height: 400,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      showMySnackBar(
                          message: "This is 1st button",
                          context: context,
                          color: Colors.black);
                      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      //   content: Text('Hellow World'),
                      //   duration: Duration(seconds: 3),
                      // ));
                    },
                    child: Text("Button 1")),
              ),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  width: double.infinity,
                  height: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        showMySnackBar(
                            message: "This is2nd button",
                            context: context,
                            color: Colors.green);
                      },
                      child: Text("Button 2"))),
            )
          ],
        ),
      ),
    );
  }
}
