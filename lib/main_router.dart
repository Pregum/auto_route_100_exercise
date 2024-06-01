import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise1.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise10.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise11.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise2.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise3.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise4.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise5.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise6.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise7.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise8.dart';
import 'package:auto_route_100_exercise/exercises/section1/exercise9.dart';
import 'package:auto_route_100_exercise/exercises/section1/section1_router.dart';
import 'package:auto_route_100_exercise/exercises/section2/exercise12.dart';
import 'package:auto_route_100_exercise/exercises/section2/exercise13.dart';
import 'package:auto_route_100_exercise/exercises/section2/exercise14.dart';
import 'package:auto_route_100_exercise/exercises/section2/exercise15.dart';
import 'package:auto_route_100_exercise/exercises/section2/exercise16.dart';
import 'package:auto_route_100_exercise/exercises/section2/section2_router.dart';
import 'package:auto_route_100_exercise/main.dart';
import 'package:flutter/material.dart';

part 'main_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class MainRouter extends _$MainRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MyHomeRoute.page,
          initial: true,
        ),
        ...section1Routes,
        ...section2Routes,
      ];
}
