import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise6Page1 extends StatefulWidget {
  const Exercise6Page1({super.key});

  @override
  State<Exercise6Page1> createState() => _Exercise6Page1State();
}

class _Exercise6Page1State extends State<Exercise6Page1> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise6Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise6Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise6Page2 extends StatefulWidget {
  const Exercise6Page2({
    super.key,
  });

  @override
  State<Exercise6Page2> createState() => _Exercise6Page2State();
}

class _Exercise6Page2State extends State<Exercise6Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise6Title)),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Route 2'),
          ],
        ),
      ),
    );
  }
}

