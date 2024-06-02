import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise21Page1 extends StatelessWidget {
  final String title;
  const Exercise21Page1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Reset Password'),
          onPressed: () {
            // Navigate to the confirmation screen
            context.router.popAndPush(const Exercise21ConfirmationRoute());
          },
        ),
      ),
    );
  }
}

@RoutePage()
class Exercise21ConfirmationPage extends StatelessWidget {
  const Exercise21ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
      ),
      body: const Center(
        child: Text('Password reset confirmation screen'),
      ),
    );
  }
}
