import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _mainRouter = MainRouter();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter auto_route 100 Exercises',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   // routerConfig: _mainRouter.config(),
    //   home: const MyHomePage(title: 'Flutter auto_route 100 Exercises'),
    // );
    return MaterialApp.router(
      title: 'Flutter auto_route 100 Exercises',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _mainRouter.config(),
      // home: const MyHomePage(title: 'Flutter auto_route 100 Exercises'),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                'Exercise1',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () {
                context.pushRoute(const Exercise1Route1());
              },
            ),
          ],
        ),
      ),
    );
  }
}
