import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTwoNums extends StatefulWidget {
  const AddTwoNums({super.key});


  @override
  State<AddTwoNums> createState() => _AddTwoNumsState();
}

class _AddTwoNumsState extends State<AddTwoNums> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  int result = 0;

  void addNumbers() {
    int num1 = int.tryParse(num1Controller.text) ?? 0;
    int num2 = int.tryParse(num2Controller.text) ?? 0;
    setState(() {
      result = num1 + num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1', border: OutlineInputBorder())
            ),
            SizedBox(height: 10,),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addNumbers,
                child: Text('Add', style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
