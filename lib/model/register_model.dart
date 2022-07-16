class Register {
  String name;
  String email;
  String password;

  Register({
    required this.name,
    required this.email,
    required this.password,
  });

  factory Register.fromJson(Map<String, dynamic> json) {
    // var list = json['id_roles'] as List;
    // List<Role> roleList = list.map((i) => Role.fromJson(i)).toList();

    return Register(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      // id_roles: roleList,
    );
  }
  factory Register.fromMap(Map<String, dynamic> json) => Register(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        // id_roles: json["id_roles"],
      );
}