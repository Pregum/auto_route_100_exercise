import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise5Page1 extends StatefulWidget {
  const Exercise5Page1({super.key});

  @override
  State<Exercise5Page1> createState() => _Exercise5Page1State();
}

class _Exercise5Page1State extends State<Exercise5Page1> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.exercise5Title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.router.push(const Exercise5Route2());
            },
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text('Route 1'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise5Page2 extends StatefulWidget {
  const Exercise5Page2({
    super.key,
  });

  @override
  State<Exercise5Page2> createState() => _Exercise5Page2State();
}

class _Exercise5Page2State extends State<Exercise5Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise5Title)),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Setting Page'),
          ],
        ),
      ),
    );
  }
}
