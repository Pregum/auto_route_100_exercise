import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise10Page1 extends StatelessWidget {
  const Exercise10Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise10Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise10Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise10Page2 extends StatelessWidget {
  const Exercise10Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise10Title)),
      body: const SizedBox.expand(
        child: ColoredBox(
          color: Colors.tealAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Route 2'),
            ],
          ),
        ),
      ),
    );
  }
}
