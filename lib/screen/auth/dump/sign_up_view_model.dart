import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/role_model.dart';
import 'package:http/http.dart' as http;
import 'package:capstone_project/screen/auth/sign_up_model.dart';

class SignUpViewModel {
  Future<User> createDataUsers(
      dynamic id, String name, String email, String password, Role role) async {
    var result = await http.post(
      Uri.parse(
          "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: jsonEncode(
        <String, dynamic>{
          'id': 1,
          'name': name,
          'email': email,
          'password': password,
          'id_roles': role,
        },
      ),
    );

    if (result.statusCode == 201) {
      print(result.body);

      return User.fromJson(jsonDecode(result.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create user');
    }
  }
}
