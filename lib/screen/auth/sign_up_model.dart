import 'package:capstone_project/model/role_model.dart';

class User {
  final int id;
  final String name;
  final String email;
  final String password;
  final Role id_roles;

  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.id_roles});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      id_roles: json['id_roles'],
    );
  }
  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        id_roles: json["id_roles"],
      );
}
