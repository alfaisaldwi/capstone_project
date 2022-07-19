import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/register_model.dart';
import 'package:capstone_project/model/role_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:capstone_project/model/user_model.dart';

class LoginViewModel {
  String baseUrl = 'http://13.57.43.205/';

  Future<User?> loginUser(String email, String password) async {
    try {
      var response = await Dio().post(baseUrl + 'user/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        print(response.data);
        SnackBar(
          content: Text('Login Berhasil'),
        );
        return User.fromJson(response.data);
      } else {
        print(response.statusCode);

        print('errorrr');
      }
    } catch (error) {
      print(error);
    }
    return null;
  }

  Future<User?> createDataUsers(
      String username, String email, String password) async {
    try {
      var response = await Dio().post(baseUrl + 'user/register', data: {
        'username': username,
        'email': email,
        'password': password,
        // 'role': role
      });

      if (response.statusCode == 201) {
        print(response.data);
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
