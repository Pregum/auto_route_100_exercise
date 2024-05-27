import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise6.dart';
import 'package:auto_route_100_exercise/main_router.dart';
import 'package:flutter/material.dart';

final List<AutoRoute> section1Routes = [
  AutoRoute(page: Exercise1Route1.page),
  AutoRoute(page: Exercise1Route2.page),
  AutoRoute(page: Exercise2Route1.page),
  AutoRoute(page: Exercise2Route2.page),
  AutoRoute(page: Exercise3Route1.page),
  AutoRoute(page: Exercise3Route2.page),
  AutoRoute(page: Exercise4Route1.page),
  AutoRoute(page: Exercise4Route2.page),
  AutoRoute(page: Exercise5Route1.page),
  AutoRoute(page: Exercise5Route2.page),
  AutoRoute(page: Exercise6Route1.page),
  CustomRoute(
    page: Exercise6Route2.page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        _fadeInOutTransitionBuilder(
            context, animation, secondaryAnimation, child),
  )
];

Widget _fadeInOutTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(
    opacity: animation,
    child: FadeTransition(
        opacity:
            Tween<double>(begin: 1.0, end: 0.0).animate(secondaryAnimation),
        child: child),
  );
}
