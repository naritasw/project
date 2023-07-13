import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Form',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextEditingController genderController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Web Form')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: genderController,
                decoration: InputDecoration(labelText: 'gender'),
              ),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'age'),
              ),
              TextField(
                controller: weightController,
                decoration: InputDecoration(labelText: 'weight'),
              ),
              TextField(
                controller: heightController,
                decoration: InputDecoration(labelText: 'height'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  String gender = genderController.text;
                  String age = ageController.text;
                  String  weight = weightController.text;
                  String height = heightController.text;

                  // สามารถประมวลผลข้อมูลต่อไปได้ที่นี่

                  print('gender: $gender');
                  print('age: $age');
                  print('weight: $weight');
                  print('height: $height');
                },
                child: Text('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
