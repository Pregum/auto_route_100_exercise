// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'section1_router.dart';

abstract class _$Section1Router extends RootStackRouter {
  // ignore: unused_element
  _$Section1Router({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Exercise1Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise1Page1(),
      );
    },
    MyHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyHomePage(),
      );
    },
  };
}

/// generated route for
/// [Exercise1Page1]
class Exercise1Route1 extends PageRouteInfo<void> {
  const Exercise1Route1({List<PageRouteInfo>? children})
      : super(
          Exercise1Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise1Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyHomePage]
class MyHomeRoute extends PageRouteInfo<void> {
  const MyHomeRoute({List<PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
