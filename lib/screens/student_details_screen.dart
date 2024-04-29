import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<Map<String, String>> _studentDetailsList = [];

  String? _firstName;
  String? _lastName;
  String? _address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Student Details"),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter First Name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _firstName = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Enter first name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter last name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _lastName = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter last name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter address';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _address = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Enter address',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  setState(() {
                    _studentDetailsList.add({
                      'fname': _firstName!,
                      'lname': _lastName!,
                      'address': _address!,
                    });
                  });
                }
              },
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Colors.deepOrangeAccent,
                child: ListView.builder(
                  itemCount: _studentDetailsList.length,
                  itemBuilder: (context, index) {
                    final student = _studentDetailsList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/image1.jpg'),
                      ),
                      title: Text('${student['fname']} ${student['lname']}'),
                      subtitle: Text(student['address']!),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
