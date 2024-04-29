import 'package:class_app/screens/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileCommon extends StatelessWidget {
  final int index;
  final String imageName;

  const ListTileCommon({
    required this.index,
    required this.imageName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$imageName'),
      ),
      title: Text('Title ${index + 1}'),
      subtitle: const Text('Lalitpur, Nepal'),
      trailing: const Icon(Icons.delete),
      enableFeedback: true,
      onTap: () {
        // showMySnackBar(message: "This is title ${index + 1}", context: context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OutputScreen(index: index)),
        );
      },
    );
  }
}
