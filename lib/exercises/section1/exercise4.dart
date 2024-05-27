import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

class Exercise4PlaneData {
  final String name;
  final int age;
  final String email;
  const Exercise4PlaneData({
    required this.name,
    required this.age,
    required this.email,
  });

  @override
  String toString() {
    return 'name: $name, age: $age, email: $email';
  }
}

@RoutePage()
class Exercise4Page1 extends StatefulWidget {
  const Exercise4Page1({super.key});

  @override
  State<Exercise4Page1> createState() => _Exercise4Page1State();
}

class _Exercise4Page1State extends State<Exercise4Page1> {
  final _nameTextEditingController = TextEditingController();
  final _ageTextEditingController = TextEditingController();
  final _emailTextEditingController = TextEditingController();
  String _ageErrorMessage = '';
  int _age = 0;

  @override
  void dispose() {
    _nameTextEditingController.dispose();
    _ageTextEditingController.dispose();
    _emailTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise4Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your name here :)',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _ageTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your age here :)',
              ),
              onChanged: (word) {
                final age = int.tryParse(_ageTextEditingController.text);
                if (age == null) {
                  setState(() {
                    _ageErrorMessage = 'age is not a number';
                    _age = 0;
                  });
                } else {
                  setState(() {
                    _ageErrorMessage = '';
                    _age = age;
                  });
                }
              },
            ),
          ),
          if (_ageErrorMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                _ageErrorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _emailTextEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your email here :)',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_ageErrorMessage.isNotEmpty) {
                return;
              }

              final planeData = Exercise4PlaneData(
                name: _nameTextEditingController.text,
                age: _age,
                email: _emailTextEditingController.text,
              );
              context.router.push(Exercise4Route2(planeData: planeData));
            },
            child: const Text('Go to Route 2'),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class Exercise4Page2 extends StatefulWidget {
  final Exercise4PlaneData planeData;
  final VoidCallback? onTapClearButton;

  const Exercise4Page2({
    super.key,
    required this.planeData,
    this.onTapClearButton,
  });

  @override
  State<Exercise4Page2> createState() => _Exercise4Page2State();
}

class _Exercise4Page2State extends State<Exercise4Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise4Title)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Route 2'),
            const SizedBox(height: 16),
            Text('Input data --> ${widget.planeData}'),
            ElevatedButton(
              onPressed: widget.onTapClearButton?.call,
              child: const Text('clear data'),
            ),
          ],
        ),
      ),
    );
  }
}
