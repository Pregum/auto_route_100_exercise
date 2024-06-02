import 'package:auto_route_100_exercise/model/user.dart';

class AuthState {
  final bool isAuthenticated;
  final User? user;

  AuthState({
    required this.isAuthenticated,
    this.user,
  });
}
