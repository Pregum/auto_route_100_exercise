import 'package:auto_route/auto_route.dart';
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
  ),
  // 遷移元のページをAutoRouteを使うと、遷移先ページへ遷移する際にAutoRouteのアニメーションが適用される為、
  // 遷移先のアニメーションだけ適用させたい場合は遷移元のページでもCustomRouteを使う
  CustomRoute(
    page: Exercise7Route1.page,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    page: Exercise7Route2.page,
    transitionsBuilder: _fadeInOutTransitionBuilder,
  ),
  CustomRoute(
    page: Exercise8Route1.page,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    page: Exercise8Route2.page,
    transitionsBuilder: TransitionsBuilders.slideLeft,
  ),
  CustomRoute(
    page: Exercise8Route3.page,
    transitionsBuilder: TransitionsBuilders.slideTop,
  ),
  CustomRoute(
    page: Exercise8Route4.page,
    transitionsBuilder: TransitionsBuilders.slideRight,
  ),
  CustomRoute(
    page: Exercise8Route5.page,
    transitionsBuilder: TransitionsBuilders.slideBottom,
  ),
  CustomRoute(
    page: Exercise9Route1.page,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    page: Exercise9Route2.page,
    transitionsBuilder: _rotateTransitionBuilder,
  ),
  CustomRoute(
    page: Exercise10Route1.page,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  CustomRoute(
    page: Exercise10Route2.page,
    transitionsBuilder: TransitionsBuilders.zoomIn,
  ),
  CustomRoute(
    page: Exercise11Route1.page,
    transitionsBuilder: TransitionsBuilders.zoomIn,
  ),
  CustomRoute(
    page: Exercise11Route2.page,
    transitionsBuilder: _shakeTransitionBuilder,
  ),
];

Widget _shakeTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return Stack(
    children: [
      child,
      Positioned.fill(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final glitch = _shakeEffect(animation.value, animation.status);
            return ClipRect(
              child: Transform.translate(
                offset: Offset(glitch, 0),
                // offset: Offset(glitch, glitch),
                child: child,
              ),
            );
          },
          child: child,
        ),
      ),
    ],
  );
}

double _shakeEffect(double value, AnimationStatus status) {
  if (status == AnimationStatus.completed) {
    return 0.0;
  }
  const noise = 100.0;
  if (value < 0.2) {
    return value * noise;
  } else if (value < 0.4) {
    return (0.4 - value) * noise;
  } else if (value < 0.6) {
    return (value - 0.4) * noise;
  } else if (value < 0.8) {
    return (0.8 - value) * noise;
  } else {
    return (value - 0.8) * noise;
  }
}

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

Widget _rotateTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return RotationTransition(
    turns: animation,
    child: RotationTransition(
      turns: Tween<double>(begin: 1.0, end: 0.0).animate(secondaryAnimation),
      child: child,
    ),
  );
}
