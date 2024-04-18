import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTwoNums extends StatefulWidget {
  const AddTwoNums({super.key});


  @override
  State<AddTwoNums> createState() => _AddTwoNumsState();
}

class _AddTwoNumsState extends State<AddTwoNums> {

  int result = 0;
  int? num1;
  int? num2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
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
              onChanged: (value){
                num1 = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1', border: OutlineInputBorder())
            ),
            SizedBox(height: 10,),
            TextField(
              onChanged: (value){
                num2 = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result = num1! + num2!;
                  });
                },
                child: Text('Add', style: TextStyle(fontSize: 30),),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    result = num1! - num2!;
                  });
                },
                child: Text('Sub', style: TextStyle(fontSize: 30),),
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
