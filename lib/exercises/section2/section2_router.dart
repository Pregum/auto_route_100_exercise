import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/main_router.dart';

final List<AutoRoute> section2Routes = [
  CustomRoute(page: Exercise12Route1.page),
  AutoRoute(page: Exercise12Route2.page),
  CustomRoute(
    page: Exercise12DialogRoute.page,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  AutoRoute(page: Exercise13Route1.page),
  AutoRoute(page: Exercise13Route2.page),
  AutoRoute(page: Exercise14Route1.page),
];
