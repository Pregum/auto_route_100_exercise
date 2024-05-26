import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
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
      appBar: AppBar(title: const Text(Constants.exercise1Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise1Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise1Page2 extends StatefulWidget {
  const Exercise1Page2({super.key});

  @override
  State<Exercise1Page2> createState() => _Exercise1Page2State();
}

class _Exercise1Page2State extends State<Exercise1Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise1Title)),
      body: const Center(
        child: Text('Route 2'),
      ),
    );
  }
}
