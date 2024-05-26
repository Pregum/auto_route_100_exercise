import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise3Page1 extends StatefulWidget {
  const Exercise3Page1({super.key});

  @override
  State<Exercise3Page1> createState() {
    return _Exercise3Page1State();
  }
}

class _Exercise3Page1State extends State<Exercise3Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise3Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise3Route2());
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise3Page2 extends StatefulWidget {
  const Exercise3Page2({super.key});

  @override
  State<Exercise3Page2> createState() => _Exercise3Page2State();
}

class _Exercise3Page2State extends State<Exercise3Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise3Title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Route 2'),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  context.maybePop();
                },
                child: const Text('back to Route 1')),
          ],
        ),
      ),
    );
  }
}
