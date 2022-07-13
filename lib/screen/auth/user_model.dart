import 'package:capstone_project/model/role_model.dart';
import 'package:json_annotation/json_annotation.dart';

class User {
  int id;
  String name;
  String email;
  String password;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    // var list = json['id_roles'] as List;
    // List<Role> roleList = list.map((i) => Role.fromJson(i)).toList();

    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      // id_roles: roleList,
    );
  }
  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        // id_roles: json["id_roles"],
      );
}
