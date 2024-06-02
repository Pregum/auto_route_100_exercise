import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:auto_route_100_exercise/model/user.dart';
import 'package:auto_route_100_exercise/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Exercise18Page1 extends ConsumerStatefulWidget {
  final String title;

  const Exercise18Page1({super.key, required this.title});

  @override
  ConsumerState<Exercise18Page1> createState() => _Exercise18Page1State();
}

// 挙動の確認の為、pushReplaceではなく通常のpushで遷移している
class _Exercise18Page1State extends ConsumerState<Exercise18Page1> {
  // var authorizing = false;
  var authorizeState = AuthorizeState.initial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () async {
              // ここでログイン処理のシミュレートをして
              // const uuid = Uuid();
              setState(() => authorizeState = AuthorizeState.authorizing);
              await Future.delayed(const Duration(seconds: 2));
              // ログイン後にメイン画面へ遷移する
              final authProvider = ref.read(authNotifierProvider.notifier);
              final user = User.empty(
                id: 'test1',
                name: 'Taro',
              );
              authProvider.login(user);
              if (context.mounted) {
                context.router.push(Exercise18Route2(title: widget.title));
              }
            },
            // child: Text(authorizing ? 'Logging' : 'Login'),
            child: _buildAuthText(),
          ),
        ],
      ),
    );
  }

  Widget _buildAuthText() {
    return switch (authorizeState) {
      AuthorizeState.authorizing => const Text('Logging'),
      AuthorizeState.authorized => const Text('Logout'),
      AuthorizeState.unauthorized => const Text('Login'),
      _ => const Text('Logout(成功フロー)'),
    };
  }
}

@RoutePage()
class Exercise18Page2 extends ConsumerWidget {
  final String title;
  const Exercise18Page2({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(child: Text('Route 2')),
          const Text('User info'),
          Text('isAuthenticated: ${authProvider.isAuthenticated}'),
          Text('id: ${authProvider.user?.id}'),
          Text('name: ${authProvider.user?.name}'),
          // pop時はGuardは適用されない挙動となっていた
          ElevatedButton(
            onPressed: () {
              final provider = ref.read(authNotifierProvider.notifier);
              provider.logout();
              context.router.push(Exercise18Route3(title: title));
            },
            child: const Text('next page with logout'),
          ),
          // pop時はGuardは適用されない挙動となっていた
          ElevatedButton(
            onPressed: () {
              context.router.push(Exercise18Route3(title: title));
            },
            child: const Text('next page without logout'),
          ),
        ],
      ),
    );
  }
}

enum AuthorizeState {
  initial,
  authorizing,
  authorized,
  unauthorized,
}

@RoutePage()
class Exercise18Page3 extends ConsumerWidget {
  final String title;
  const Exercise18Page3({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 3'),
          ),
          const Text('User info'),
          Text('isAuthenticated: ${authProvider.isAuthenticated}'),
          Text('id: ${authProvider.user?.id}'),
          Text('name: ${authProvider.user?.name}'),
          ElevatedButton(
            child: const Text('pop with Logout'),
            onPressed: () {
              final provider = ref.read(authNotifierProvider.notifier);
              provider.logout();
              context.maybePop();
            },
          ),
          ElevatedButton(
            child: const Text('pop without Logout'),
            onPressed: () {
              final provider = ref.read(authNotifierProvider.notifier);
              provider.logout();
            },
          ),
        ],
      ),
    );
  }
}
