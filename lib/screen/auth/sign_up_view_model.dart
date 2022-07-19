import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/role_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:capstone_project/model/user_model.dart';

class SignUpViewModel {
  Future<User?> createDataUsers(
      String username, String email, String password) async {
    try {
      var response = await Dio().post(
          "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser",
          data: {
            'username': username,
            'email': email,
            'password': password,
            // 'role': role
          });

      if (response.statusCode == 200) {
        return User(
          id: response.data['id'],
          username: response.data['username'],
          email: response.data['email'],
          password: response.data['password'],
          // id_roles: response.data['role']
        );
      } else {
        print('failed');
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
