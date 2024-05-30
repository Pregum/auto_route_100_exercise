import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise13Page1 extends StatefulWidget {
  final String title;
  const Exercise13Page1({super.key, required this.title});

  @override
  State<Exercise13Page1> createState() => _Exercise13Page1State();
}

class _Exercise13Page1State extends State<Exercise13Page1> {
  var _userName = '';

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
            onPressed: () {
              context.router.push(Exercise13Route2(title: widget.title));
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
              setState(() => _userName = ret);
            },
            child: const Text('Show Dialog'),
          ),
          if (_userName.isNotEmpty)
            Text('Hello $_userName')
          else
            const Text('Please enter your name from the dialogue button above'),
        ],
      ),
    );
  }

  _showDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return Exercise13DialogPage();
      },
    );
  }
}

@RoutePage()
class Exercise13Page2 extends StatelessWidget {
  final String title;
  const Exercise13Page2({super.key, required this.title});

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

class Exercise13DialogPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  Exercise13DialogPage({super.key});

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
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    context.maybePop(_controller.text);
                  },
                  child: const Text('Send your name'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
