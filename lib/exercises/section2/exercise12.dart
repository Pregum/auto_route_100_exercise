import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise12Page1 extends StatelessWidget {
  const Exercise12Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise12Title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text('Route 1'),
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const Exercise12Route2());
            },
            child: const Text('Go to Route 2'),
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

  Future<dynamic> _showDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return const Exercise12DialogPage();
      },
    );
  }
}

@RoutePage()
class Exercise12Page2 extends StatelessWidget {
  const Exercise12Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.exercise12Title)),
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

@RoutePage()
class Exercise12DialogPage extends StatelessWidget {
  const Exercise12DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    // iOS・Webだと[CupertinoAlertDialog] が呼ばれる
    // Androidの場合は[AlertDialog] が呼ばれる
    return AlertDialog(
      title: const Text('Dialog Title'),
      content: const Text('This is the content of the dialog.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            context.maybePop('hello');
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
