import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise17Page1 extends StatefulWidget {
  final String title;

  const Exercise17Page1({super.key, required this.title});

  @override
  State<Exercise17Page1> createState() => _Exercise17Page1State();
}

class _Exercise17Page1State extends State<Exercise17Page1> {
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
              // final user = _UserModel(
              //   uuid.v4(),
              //   'Hello taro',
              //   'hogehoge@example.com',
              // );
              await Future.delayed(const Duration(seconds: 2));
              // ログイン後にメイン画面へ遷移する
              setState(() => authorizeState = AuthorizeState.authorized);
              if (context.mounted) {
                context.router.push(Exercise17Route2(title: widget.title));
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
      _ => const Text('Login(成功フロー)'),
    };
  }
}

@RoutePage()
class Exercise17Page2 extends StatelessWidget {
  final String title;
  const Exercise17Page2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 2'),
          ),
          ElevatedButton(
            onPressed: () {
              // ログアウト処理を実行する
              // final user = _UserModel(
              //   '',
              //   '',
              //   '',
              // );
              // user.isLogin = false;
              // ログアウト後にログイン画面へ遷移する
              context.maybePop();
            },
            child: const Text('Logout'),
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

// class _UserModel {
//   String id;
//   String name;
//   String email;
//   bool isLogin = false;

//   _UserModel(
//     this.id,
//     this.name,
//     this.email,
//   );
// }
