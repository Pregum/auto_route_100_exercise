import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:auto_route_100_exercise/model/user.dart';
import 'package:auto_route_100_exercise/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Exercise19PrePage extends ConsumerWidget {
  final String title;
  const Exercise19PrePage({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    // pushだとpop時にこの画面が残ってしまうので、既存のstackを残しつつこの画面を置き換えるpopAndPushを利用
    if (authProvider.isAuthenticated) {
      context.router.popAndPush(Exercise19Route2(title: title));
    } else {
      context.router.popAndPush(Exercise19Route1(title: title));
    }

    return const Center(child: CircularProgressIndicator.adaptive());
  }
}

@RoutePage()
class Exercise19Page1 extends ConsumerStatefulWidget {
  final String title;

  const Exercise19Page1({super.key, required this.title});

  @override
  ConsumerState<Exercise19Page1> createState() => _Exercise19Page1State();
}

class _Exercise19Page1State extends ConsumerState<Exercise19Page1> {
  // var authorizing = false;
  var authorizeState = AuthorizeState.initial;

  @override
  Widget build(BuildContext context) {
    final authProvider = ref.watch(authNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          const Text('User info'),
          Text('isAuthenticated: ${authProvider.isAuthenticated}'),
          Text('id: ${authProvider.user?.id}'),
          Text('name: ${authProvider.user?.name}'),
          ElevatedButton(
            onPressed: () async {
              // ここでログイン処理のシミュレートをして [AuthGuard] でログインできていることを検証する
              // どのGuardを起動するかは、routerで設定する
              setState(() => authorizeState = AuthorizeState.authorizing);
              await Future.delayed(const Duration(seconds: 2));
              // ログイン後にメイン画面へ遷移する
              setState(() => authorizeState = AuthorizeState.authorized);
              final authProvider = ref.read(authNotifierProvider.notifier);
              final user = User(
                id: 'test1',
                name: 'Taro',
              );
              authProvider.login(user);
              if (context.mounted) {
                context.router.push(Exercise19Route2(title: widget.title));
              }
            },
            child: _buildAuthText(title: 'Login(always success)'),
          ),
          ElevatedButton(
            onPressed: () async {
              // ここでログイン処理のシミュレートをして 遷移先にて[AuthGuard] でログインできていることを検証する
              // どのGuardを起動するかは、routerで設定する
              setState(() => authorizeState = AuthorizeState.authorizing);
              final user = ref.watch(authNotifierProvider);
              await Future.delayed(const Duration(seconds: 2));
              // ログイン後にメイン画面へ遷移する
              setState(() => authorizeState = user.isAuthenticated
                  ? AuthorizeState.unauthorized
                  : AuthorizeState.unauthorized);
              if (context.mounted) {
                context.router.push(Exercise19Route2(title: widget.title));
              }
            },
            // child: Text(authorizing ? 'Logging' : 'Login'),
            child: _buildAuthText(title: 'Login(always failure)'),
          ),
        ],
      ),
    );
  }

  Widget _buildAuthText({String? title}) {
    return switch (authorizeState) {
      AuthorizeState.authorizing => const Text('Logging'),
      AuthorizeState.authorized => const Text('Logout'),
      _ => Text(title ?? 'Login(成功フロー)'),
    };
  }
}

@RoutePage()
class Exercise19Page2 extends ConsumerWidget {
  final String title;
  const Exercise19Page2({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(authNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(child: Text('Route 2')),
          Text(
            'isAuthenticated: ${authProvider.isAuthenticated}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text('id: ${authProvider.user?.id}'),
          Text('name: ${authProvider.user?.name}'),
          // pop時はGuardは適用されない挙動となっていた
          ElevatedButton(
            onPressed: () {
              context.maybePop();
            },
            child: const Text('execute context.maybePop()'),
          ),
          ElevatedButton(
            onPressed: () {
              final provider = ref.read(authNotifierProvider.notifier);
              provider.logout();
              context.maybePop();
            },
            child: const Text('execute logout and context.maybePop()'),
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
