import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise11Page1 extends StatelessWidget {
  const Exercise11Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise11Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise11Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise11Page2 extends StatelessWidget {
  const Exercise11Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise11Title)),
      body: SizedBox.expand(
        child: Container(
          color: Colors.tealAccent,
          child: const Column(
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
