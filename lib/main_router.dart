import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise1.dart';
import 'package:auto_route_100_exercise/exercises/section1/section1_router.dart';
import 'package:auto_route_100_exercise/main.dart';

part 'main_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class MainRouter extends _$MainRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MyHomeRoute.page,
          initial: true,
        ),
        ...Section1Router().routes,
      ];
}
