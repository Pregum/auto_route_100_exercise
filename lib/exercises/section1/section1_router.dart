import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise1.dart';
import 'package:auto_route_100_exercise/main.dart';
import 'package:flutter/material.dart';

part 'section1_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class Section1Router extends _$Section1Router {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: Exercise1Route1.page),
    ];
  }
}
