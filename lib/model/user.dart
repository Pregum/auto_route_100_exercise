class User {
  final String id;
  final String name;
  final String email;
  final String password;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  factory User.empty({
    String? id,
    String? name,
    String? email,
    String? password,
  }) {
    return User(
      id: id ?? '',
      name: name ?? '',
      email: email ?? '',
      password: password ?? '',
    );
  }
}
