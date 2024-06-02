import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:auto_route_100_exercise/model/user.dart';
import 'package:auto_route_100_exercise/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Exercise20LoginPage extends ConsumerWidget {
  final String title;
  final TextEditingController nameController =
      TextEditingController(text: '[E20] Taro');
  final TextEditingController emailController =
      TextEditingController(text: 'example@example.com');
  final TextEditingController passwordController =
      TextEditingController(text: 'password');
  Exercise20LoginPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (previous, next) {
      if (next.isAuthenticated) {
        context.router.push(const Exercise20RegistrationCompleteRoute());
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              controller: emailController,
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                final provider = ref.read(authNotifierProvider.notifier);
                final user = User(
                  id: 'exercise20',
                  name: nameController.text,
                  email: emailController.text,
                  password: passwordController.text,
                );
                provider.login(user);
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

@RoutePage()
class Exercise20RegistrationCompletePage extends ConsumerWidget {
  const Exercise20RegistrationCompletePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider).user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Complete'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_outline,
                size: 64.0,
                color: Colors.green,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Registration Successful!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              Text('email: ${user?.email}'),
              Text('name: ${user?.name}'),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  context.router.popUntilRoot();
                },
                child: const Text('pop to root screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
