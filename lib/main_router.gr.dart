// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'main_router.dart';

abstract class _$MainRouter extends RootStackRouter {
  // ignore: unused_element
  _$MainRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Exercise1Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise1Page1(),
      );
    },
    Exercise1Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise1Page2(),
      );
    },
    Exercise2Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise2Page1(),
      );
    },
    Exercise2Route2.name: (routeData) {
      final args = routeData.argsAs<Exercise2Route2Args>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Exercise2Page2(
          key: args.key,
          textFromThePreviousPage: args.textFromThePreviousPage,
        ),
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
/// [Exercise1Page2]
class Exercise1Route2 extends PageRouteInfo<void> {
  const Exercise1Route2({List<PageRouteInfo>? children})
      : super(
          Exercise1Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise1Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise2Page1]
class Exercise2Route1 extends PageRouteInfo<void> {
  const Exercise2Route1({List<PageRouteInfo>? children})
      : super(
          Exercise2Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise2Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise2Page2]
class Exercise2Route2 extends PageRouteInfo<Exercise2Route2Args> {
  Exercise2Route2({
    Key? key,
    required String textFromThePreviousPage,
    List<PageRouteInfo>? children,
  }) : super(
          Exercise2Route2.name,
          args: Exercise2Route2Args(
            key: key,
            textFromThePreviousPage: textFromThePreviousPage,
          ),
          initialChildren: children,
        );

  static const String name = 'Exercise2Route2';

  static const PageInfo<Exercise2Route2Args> page =
      PageInfo<Exercise2Route2Args>(name);
}

class Exercise2Route2Args {
  const Exercise2Route2Args({
    this.key,
    required this.textFromThePreviousPage,
  });

  final Key? key;

  final String textFromThePreviousPage;

  @override
  String toString() {
    return 'Exercise2Route2Args{key: $key, textFromThePreviousPage: $textFromThePreviousPage}';
  }
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
