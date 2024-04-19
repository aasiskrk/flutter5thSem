import 'package:class_app/models/arithmetic_model.dart';
import 'package:flutter/material.dart';

class AddTwoNums extends StatefulWidget {
  const AddTwoNums({super.key});

  @override
  State<AddTwoNums> createState() => _AddTwoNumsState();
}

class _AddTwoNumsState extends State<AddTwoNums> {
  //global key
  final mykey = GlobalKey<FormState>();
  int result = 0;
  int? num1;
  int? num2;
  ArithmeticModel? arithmeticModel;

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
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter first no';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    num1 = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Enter number 1',
                      border: OutlineInputBorder())),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter second no';
                  }
                  return null;
                },
                onChanged: (value) {
                  num2 = int.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: 'Enter number 2', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel= ArithmeticModel(first: num1!, second: num2!);
                        result = arithmeticModel!.add();
                      });
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      setState(() {
                        arithmeticModel = ArithmeticModel(first: num1!, second: num2!);
                        result = arithmeticModel!.sub();
                      });
                    }
                  },
                  child: const Text(
                    'Sub',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Result: $result',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
