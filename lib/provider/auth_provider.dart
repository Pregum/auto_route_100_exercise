import 'package:auto_route_100_exercise/model/auth_state.dart';
import 'package:auto_route_100_exercise/model/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return AuthState(isAuthenticated: false);
  }

  void login(User user) {
    state = AuthState(isAuthenticated: true, user: user);
  }
  
  void logout(User user) {
    state = AuthState(isAuthenticated: false);
  }
}
