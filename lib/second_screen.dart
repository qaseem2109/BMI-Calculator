import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final double results;

  const SecondScreen({super.key, required this.results});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Final Result")),
      body: Center(child: Text(results.toStringAsFixed(3))),
    );
  }
}
