import 'package:flutter/material.dart';

class FewDesignsScreen extends StatelessWidget {
  const FewDesignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Designs"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(20),
          child: Container(
            height: 100,
            color: Colors.blueAccent,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Row(children: [
                      Icon(Icons.call),
                    ],
                    ),
                    Row(
                      children: [
                        Text("Call"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Row(children: [
                      Icon(Icons.navigation, color: Colors.green,),
                    ],
                    ),
                    Row(
                      children: [
                        Text("Route"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Row(children: [
                      Icon(Icons.share, color: Colors.red,),
                    ],
                    ),
                    Row(
                      children: [
                        Text("Share"),
                      ],
                    ),
                  ],
                )
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
