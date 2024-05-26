import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise1Page1 extends StatefulWidget {
  const Exercise1Page1({super.key});

  @override
  State<Exercise1Page1> createState() => _Exercise1Page1State();
}

class _Exercise1Page1State extends State<Exercise1Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('exercise 1')),
      body: const Center(
        child: Text('Route 1'),
      ),
    );
  }
}
