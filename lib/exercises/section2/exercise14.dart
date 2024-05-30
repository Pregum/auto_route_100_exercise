import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Exercise14Page1 extends StatelessWidget {
  final String title;
  const Exercise14Page1({super.key, required this.title});

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
              // retにはmaybePopした値が入る
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
        return ShakeDialog();
      },
    );
  }
}

class ShakeDialog extends StatefulWidget {
  const ShakeDialog({super.key});

  @override
  State<ShakeDialog> createState() => _ShakeDialogState();
}

class _ShakeDialogState extends State<ShakeDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 10)
        .chain(
          CurveTween(curve: Curves.elasticIn),
        )
        .animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: AlertDialog(
            title: const Text('Shake Dialog'),
            content: const Text('This dialog shakes when displayed.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
