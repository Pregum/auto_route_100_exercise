import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/constants.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:auto_route_100_exercise/provider/main_router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // final _mainRouter = MainRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainRouter = ref.watch(mainRouterNotifierProvider);
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
      // routerConfig: _mainRouter.config(),
      routerConfig: mainRouter.config(),
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
        title: const Text('Flutter auto_route 100 Exercises'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ExpansionTile(
              title: const Text('section1'),
              children: [
                _buildExerciseButton(context, Constants.exercise1Title, () {
                  _navigateToExercise(const Exercise1Route1());
                }),
                _buildExerciseButton(context, Constants.exercise2Title, () {
                  _navigateToExercise(const Exercise2Route1());
                }),
                _buildExerciseButton(context, Constants.exercise3Title, () {
                  _navigateToExercise(const Exercise3Route1());
                }),
                _buildExerciseButton(context, Constants.exercise4Title, () {
                  _navigateToExercise(const Exercise4Route1());
                }),
                _buildExerciseButton(context, Constants.exercise5Title, () {
                  _navigateToExercise(const Exercise5Route1());
                }),
                _buildExerciseButton(context, Constants.exercise6Title, () {
                  _navigateToExercise(const Exercise6Route1());
                }),
                _buildExerciseButton(context, Constants.exercise7Title, () {
                  _navigateToExercise(const Exercise7Route1());
                }),
                _buildExerciseButton(context, Constants.exercise8Title, () {
                  _navigateToExercise(const Exercise8Route1());
                }),
                _buildExerciseButton(context, Constants.exercise9Title, () {
                  _navigateToExercise(const Exercise9Route1());
                }),
                _buildExerciseButton(context, Constants.exercise10Title, () {
                  _navigateToExercise(const Exercise10Route1());
                }),
                _buildExerciseButton(context, Constants.exercise11Title, () {
                  _navigateToExercise(const Exercise11Route1());
                }),
              ],
            ),
            ExpansionTile(
              title: const Text('section2'),
              initiallyExpanded: true, // TODO: 新しいセクションを追加したら差し替える
              children: [
                _buildExerciseButton(context, Constants.exercise12Title, () {
                  _navigateToExercise(const Exercise12Route1());
                }),
                _buildExerciseButton(context, Constants.exercise13Title, () {
                  _navigateToExercise(
                      Exercise13Route1(title: Constants.exercise13Title));
                }),
                _buildExerciseButton(context, Constants.exercise14Title, () {
                  _navigateToExercise(
                      Exercise14Route1(title: Constants.exercise14Title));
                }),
                _buildExerciseButton(
                  context,
                  Constants.exercise15Title,
                  () {
                    _navigateToExercise(
                        Exercise15Route1(title: Constants.exercise15Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise16Title,
                  () {
                    _navigateToExercise(
                        Exercise16Route1(title: Constants.exercise16Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise17Title,
                  () {
                    _navigateToExercise(
                        Exercise17Route1(title: Constants.exercise17Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise18Title,
                  () {
                    _navigateToExercise(
                        Exercise18Route1(title: Constants.exercise18Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise19Title,
                  () {
                    _navigateToExercise(
                        Exercise19PreRoute(title: Constants.exercise19Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise20Title,
                  () {
                    _navigateToExercise(
                        Exercise20LoginRoute(title: Constants.exercise20Title));
                  },
                ),
                _buildExerciseButton(
                  context,
                  Constants.exercise21Title,
                  () {
                    // _navigateToExercise(
                    //     Exercise21Route1(title: Constants.exercise21Title));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToExercise(PageRouteInfo<dynamic> route) {
    context.pushRoute(route);
  }

  Widget _buildExerciseButton(
      BuildContext context, String content, VoidCallback onPressed) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          content,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
