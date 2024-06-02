import 'package:auto_route/auto_route.dart';
import 'package:auto_route_100_exercise/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthGuard extends AutoRouteGuard {
  final Ref _ref;
  AuthGuard(this._ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authProvider = _ref.read(authNotifierProvider);
    if (authProvider.isAuthenticated) {
      debugPrint('Authenticated');
      resolver.next(true);
    } else {
      // router.push(const LoginRoute());
      debugPrint('Not authenticated');
      resolver.next(false);
    }
  }
}
