import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: const Text(
            "This is a Container",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class ContainerScreen extends StatefulWidget {
//   const ContainerScreen({super.key});
//
//   @override
//   State<ContainerScreen> createState() => _ContainerScreenState();
// }
//
// class _ContainerScreenState extends State<ContainerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[100],
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             alignment: Alignment.centerRight,
//             child: const Text(
//               "This is a Container",
//               style: TextStyle(fontSize: 15),
//             ),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.blueAccent,
//                 border: Border.all(color: Colors.black, width: 2)),
//           ),
//         ),
//       ),
//     );
//   }
// }
