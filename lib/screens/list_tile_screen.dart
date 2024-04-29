import 'package:class_app/common/list_tile_common.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List tile"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 15; i++) ...{
              if (i % 2 == 0) ...{
                ListTileCommon(
                  index: i,
                  imageName: "image1.jpg",
                )
              } else ...{
                ListTileCommon(
                  index: i,
                  imageName: "image2.jpg",
                )
              },
            }
          ],
        ),
      ),
    );
  }
}
