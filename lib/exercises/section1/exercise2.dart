import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise2Page1 extends StatefulWidget {
  const Exercise2Page1({super.key});

  @override
  State<Exercise2Page1> createState() => _Exercise2Page1State();
}

class _Exercise2Page1State extends State<Exercise2Page1> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise2Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter "Hello World" here :)',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(Exercise2Route2(
                  textFromThePreviousPage: _textEditingController.text));
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise2Page2 extends StatefulWidget {
  final String textFromThePreviousPage;
  const Exercise2Page2({
    super.key,
    required this.textFromThePreviousPage,
  });

  @override
  State<Exercise2Page2> createState() => _Exercise2Page2State();
}

class _Exercise2Page2State extends State<Exercise2Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise2Title)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Route 2'),
            const SizedBox(height: 16),
            Text('Input text --> ${widget.textFromThePreviousPage}'),
          ],
        ),
      ),
    );
  }
}
