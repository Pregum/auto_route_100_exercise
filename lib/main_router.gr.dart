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
    Exercise3Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise3Page1(),
      );
    },
    Exercise3Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise3Page2(),
      );
    },
    Exercise4Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise4Page1(),
      );
    },
    Exercise4Route2.name: (routeData) {
      final args = routeData.argsAs<Exercise4Route2Args>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Exercise4Page2(
          key: args.key,
          planeData: args.planeData,
          onTapClearButton: args.onTapClearButton,
        ),
      );
    },
    Exercise5Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise5Page1(),
      );
    },
    Exercise5Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise5Page2(),
      );
    },
    Exercise6Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise6Page1(),
      );
    },
    Exercise6Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise6Page2(),
      );
    },
    Exercise7Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise7Page1(),
      );
    },
    Exercise7Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise7Page2(),
      );
    },
    Exercise8Route1.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise8Page1(),
      );
    },
    Exercise8Route2.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise8Page2(),
      );
    },
    Exercise8Route3.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise8Page3(),
      );
    },
    Exercise8Route4.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise8Page4(),
      );
    },
    Exercise8Route5.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Exercise8Page5(),
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
/// [Exercise3Page1]
class Exercise3Route1 extends PageRouteInfo<void> {
  const Exercise3Route1({List<PageRouteInfo>? children})
      : super(
          Exercise3Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise3Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise3Page2]
class Exercise3Route2 extends PageRouteInfo<void> {
  const Exercise3Route2({List<PageRouteInfo>? children})
      : super(
          Exercise3Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise3Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise4Page1]
class Exercise4Route1 extends PageRouteInfo<void> {
  const Exercise4Route1({List<PageRouteInfo>? children})
      : super(
          Exercise4Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise4Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise4Page2]
class Exercise4Route2 extends PageRouteInfo<Exercise4Route2Args> {
  Exercise4Route2({
    Key? key,
    required Exercise4PlaneData planeData,
    void Function()? onTapClearButton,
    List<PageRouteInfo>? children,
  }) : super(
          Exercise4Route2.name,
          args: Exercise4Route2Args(
            key: key,
            planeData: planeData,
            onTapClearButton: onTapClearButton,
          ),
          initialChildren: children,
        );

  static const String name = 'Exercise4Route2';

  static const PageInfo<Exercise4Route2Args> page =
      PageInfo<Exercise4Route2Args>(name);
}

class Exercise4Route2Args {
  const Exercise4Route2Args({
    this.key,
    required this.planeData,
    this.onTapClearButton,
  });

  final Key? key;

  final Exercise4PlaneData planeData;

  final void Function()? onTapClearButton;

  @override
  String toString() {
    return 'Exercise4Route2Args{key: $key, planeData: $planeData, onTapClearButton: $onTapClearButton}';
  }
}

/// generated route for
/// [Exercise5Page1]
class Exercise5Route1 extends PageRouteInfo<void> {
  const Exercise5Route1({List<PageRouteInfo>? children})
      : super(
          Exercise5Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise5Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise5Page2]
class Exercise5Route2 extends PageRouteInfo<void> {
  const Exercise5Route2({List<PageRouteInfo>? children})
      : super(
          Exercise5Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise5Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise6Page1]
class Exercise6Route1 extends PageRouteInfo<void> {
  const Exercise6Route1({List<PageRouteInfo>? children})
      : super(
          Exercise6Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise6Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise6Page2]
class Exercise6Route2 extends PageRouteInfo<void> {
  const Exercise6Route2({List<PageRouteInfo>? children})
      : super(
          Exercise6Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise6Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise7Page1]
class Exercise7Route1 extends PageRouteInfo<void> {
  const Exercise7Route1({List<PageRouteInfo>? children})
      : super(
          Exercise7Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise7Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise7Page2]
class Exercise7Route2 extends PageRouteInfo<void> {
  const Exercise7Route2({List<PageRouteInfo>? children})
      : super(
          Exercise7Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise7Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise8Page1]
class Exercise8Route1 extends PageRouteInfo<void> {
  const Exercise8Route1({List<PageRouteInfo>? children})
      : super(
          Exercise8Route1.name,
          initialChildren: children,
        );

  static const String name = 'Exercise8Route1';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise8Page2]
class Exercise8Route2 extends PageRouteInfo<void> {
  const Exercise8Route2({List<PageRouteInfo>? children})
      : super(
          Exercise8Route2.name,
          initialChildren: children,
        );

  static const String name = 'Exercise8Route2';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise8Page3]
class Exercise8Route3 extends PageRouteInfo<void> {
  const Exercise8Route3({List<PageRouteInfo>? children})
      : super(
          Exercise8Route3.name,
          initialChildren: children,
        );

  static const String name = 'Exercise8Route3';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise8Page4]
class Exercise8Route4 extends PageRouteInfo<void> {
  const Exercise8Route4({List<PageRouteInfo>? children})
      : super(
          Exercise8Route4.name,
          initialChildren: children,
        );

  static const String name = 'Exercise8Route4';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Exercise8Page5]
class Exercise8Route5 extends PageRouteInfo<void> {
  const Exercise8Route5({List<PageRouteInfo>? children})
      : super(
          Exercise8Route5.name,
          initialChildren: children,
        );

  static const String name = 'Exercise8Route5';

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
