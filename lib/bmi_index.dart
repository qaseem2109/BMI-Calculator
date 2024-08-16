// ignore: file_names
// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'second_screen.dart';

class BmiIndex extends StatefulWidget {
  const BmiIndex({super.key});

  @override
  State<BmiIndex> createState() => _BmiIndexState();
}

class _BmiIndexState extends State<BmiIndex> {
  TextEditingController heightcontroller = TextEditingController();
  TextEditingController weightcontroller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    void calc() {
      double height = double.parse(heightcontroller.text);
      double weight = double.parse(weightcontroller.text);
      result = weight / (height * height);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SecondScreen(
                    results: result,
                  )));
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: weightcontroller,
              decoration: InputDecoration(
                hintText: 'Weight',
                suffixText: 'Kg',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightcontroller,
              decoration: InputDecoration(
                  hintText: 'Height',
                  suffixText: 'm',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              calc();
            },
            child: const Text('result'),
          ),
        ],
      ),
    );
  }
}
