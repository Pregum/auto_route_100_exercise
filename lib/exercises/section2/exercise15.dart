import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise15Page1 extends StatelessWidget {
  final String title;
  const Exercise15Page1({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () async {
              // await しないと'close dialog' が閉じる前に表示される
              final ret = await _showDialog(context);
              debugPrint('close dialog');
              // retにはmaybePopした値('hello')が入る
              debugPrint('ret: $ret');
            },
            child: const Text('Show Dialog'),
          ),
        ],
      ),
    );
  }

  _showDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return Exercise15DialogPage(title: title);
      },
    );
  }
}

@RoutePage()
class Exercise15Page2 extends StatelessWidget {
  final String title;
  const Exercise15Page2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
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

class Exercise15DialogPage extends StatelessWidget {
  final String title;
  const Exercise15DialogPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          // maxAxisSize: MainAxisSize.min,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Custom Dialog'),
            const SizedBox(height: 20),
            const Text('This is a custom dialog'),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.router.push(Exercise15Route2(title: title));
              },
              child: const Text('Go to Route 2'),
            ),
            ElevatedButton(
              onPressed: () {
                context.maybePop();
                context.router.push(Exercise15Route2(title: title));
              },
              child: const Text('close dialog and Go to Route 2'),
            ),
          ],
        ),
      ),
    );
  }
}
