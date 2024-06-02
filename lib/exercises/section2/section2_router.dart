import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/guards/auth_guard.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<AutoRoute> section2Routes(Ref ref) => [
      CustomRoute(page: Exercise12Route1.page),
      AutoRoute(page: Exercise12Route2.page),
      CustomRoute(
        page: Exercise12DialogRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      AutoRoute(page: Exercise13Route1.page),
      AutoRoute(page: Exercise13Route2.page),
      AutoRoute(page: Exercise14Route1.page),
      AutoRoute(page: Exercise15Route1.page),
      AutoRoute(page: Exercise15Route2.page),
      AutoRoute(page: Exercise16Route1.page),
      AutoRoute(page: Exercise17Route1.page),
      AutoRoute(page: Exercise17Route2.page, guards: [AuthGuard(ref)]),
      AutoRoute(page: Exercise17Route1.page),
      AutoRoute(page: Exercise17Route2.page, guards: [AuthGuard(ref)]),
      AutoRoute(page: Exercise18Route1.page),
      AutoRoute(page: Exercise18Route2.page, guards: [AuthGuard(ref)]),
      AutoRoute(page: Exercise18Route3.page),
      AutoRoute(page: Exercise19PreRoute.page),
      AutoRoute(page: Exercise19Route1.page),
      AutoRoute(page: Exercise19Route2.page, guards: [AuthGuard(ref)]),
    ];
