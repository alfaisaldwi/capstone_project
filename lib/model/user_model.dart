import 'package:capstone_project/model/role_model.dart';
import 'package:json_annotation/json_annotation.dart';

class User {
  int? id;
  String? username;
  String? email;
  String? password;

  User({
    this.id,
    this.username,
    this.email,
    this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    // var list = json['id_roles'] as List;
    // List<Role> roleList = list.map((i) => Role.fromJson(i)).toList();

    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      // id_roles: roleList,
    );
  }
  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        // id_roles: json["id_roles"],
      );
}
