import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise7Page1 extends StatefulWidget {
  const Exercise7Page1({super.key});

  @override
  State<Exercise7Page1> createState() => _Exercise7Page1State();
}

class _Exercise7Page1State extends State<Exercise7Page1> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise7Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise7Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise7Page2 extends StatefulWidget {
  const Exercise7Page2({
    super.key,
  });

  @override
  State<Exercise7Page2> createState() => _Exercise7Page2State();
}

class _Exercise7Page2State extends State<Exercise7Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise7Title)),
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

