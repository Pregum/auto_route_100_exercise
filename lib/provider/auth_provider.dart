import 'package:auto_route_100_exercise/model/auth_state.dart';
import 'package:auto_route_100_exercise/model/user.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

// root pageで参照を保持していないと、画面遷移時に状態がクリアされるので、keepAlive: trueを指定している
// 指定しないと、Exercise18Route2でログイン後にExercise18Route3に遷移した際に、ログイン状態がクリアされた
@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return AuthState(isAuthenticated: false);
  }

  void login(User user) {
    debugPrint('login. user: id - ${ user.id }, name - ${user.name}');
    state = AuthState(isAuthenticated: true, user: user);
  }
  
  void logout() {
    state = AuthState(isAuthenticated: false);
  }
}
