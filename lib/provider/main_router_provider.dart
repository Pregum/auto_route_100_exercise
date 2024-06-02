import 'package:auto_route_100_exercise/main_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_router_provider.g.dart';

/// A provider that creates a [MainRouter] instance.
@riverpod
class MainRouterNotifier extends _$MainRouterNotifier {
  @override
  MainRouter build() {
    return MainRouter(ref);
  }
}
