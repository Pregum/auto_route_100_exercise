import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise8Page1 extends StatefulWidget {
  const Exercise8Page1({super.key});

  @override
  State<Exercise8Page1> createState() => _Exercise8Page1State();
}

class _Exercise8Page1State extends State<Exercise8Page1> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise8Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise8Route2());
            },
            child: const Text('Slide to the left and transition to Route 2'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise8Route3());
            },
            child: const Text('Slide to the top and transition to Route 3'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise8Route4());
            },
            child: const Text('Slide to the right and transition to Route 4'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise8Route5());
            },
            child: const Text('Slide to the bottom and transition to Route 5'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise8Page2 extends StatelessWidget {
  const Exercise8Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise8Title)),
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

@RoutePage()
class Exercise8Page3 extends StatelessWidget {
  const Exercise8Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise8Title)),
      body: SizedBox.expand(
        child: Container(
          color: Colors.tealAccent,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Route 3'),
            ],
          ),
        ),
      ),
    );
  }
}

@RoutePage()
class Exercise8Page4 extends StatelessWidget {
  const Exercise8Page4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise8Title)),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Route 4'),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class Exercise8Page5 extends StatelessWidget {
  const Exercise8Page5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise8Title)),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Route 5'),
          ],
        ),
      ),
    );
  }
}
