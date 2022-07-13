import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/role_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:capstone_project/screen/auth/user_model.dart';

class LoginViewModel {
  String baseUrl = 'http://ec2-13-57-43-205.us-west-1.compute.amazonaws.com/';

  Future<User?> loginUser(String email, String password) async {
    try {
      var response = await Dio().post(baseUrl + 'user/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        print(response.data);
        return User.fromJson(response.data);
      } else {
        print('errorrr');
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
  //   var response = await http.post(
  //     Uri.parse(
  //         "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/login"),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8'
  //     },
  //     body: jsonEncode(
  //       <String, dynamic>{
  //         'email': email,
  //         'password': password,
  //       },
  //     ),
  //   );

  //   if (response.statusCode == 200) {
  //     return User.fromJson(json.decode(response.body));
  //   } else {
  //     // If the server did not return a 201 CREATED response,
  //     // then throw an exception.
  //     throw Exception('Failed to create user');
  //   }
  // }
}
