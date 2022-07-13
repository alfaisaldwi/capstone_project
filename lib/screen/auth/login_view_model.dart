// import 'dart:collection';
// import 'dart:convert';

// import 'package:capstone_project/model/role_model.dart';
// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'package:capstone_project/screen/auth/sign_up_model.dart';

// class SignUpViewModel {
//   Future<User> createDataUsers(
//       String name, String email, String password, Role role) async {
    
//     Response response = await _dio.post(
//             'https://api.loginradius.com/identity/v2/auth/login',
//             data: {
//               'email': email,
//               'password': password
//             },
//             queryParameters: {'apikey': 'YOUR_API_KEY'},
//           );
//           //returns the successful user data json object
//           return response.data;
//         } on DioError catch (e) {
//           //returns the error object if any
//           return e.response!.data;
//         }
//       }
    
//     // try {
//     //   var response = await Dio().post(
//     //       "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser",
//     //       data: {
//     //         'name': name,
//     //         'email': email,
//     //         'password': password,
//     //         'role': role
//     //       });

//     //   if (response.statusCode == 200) {
//     //     return User(
//     //         id: response.data['id'],
//     //         name: response.data['name'],
//     //         email: response.data['email'],
//     //         password: response.data['password'],
//     //         id_roles: response.data['role']);
//     //   } else {
//     //     print('failed');
//     //   }
//     //   return null;
//     // } catch (e) {
//     //   throw Exception(e.toString());
//     // }

//     var response = await http.post(
//       Uri.parse(
//           "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser"),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8'
//       },
//       body: jsonEncode(
//         <String, dynamic>{
//           'name': name,
//           'email': email,
//           'password': password,
//           'id_roles': role,
//         },
//       ),
//     );

//     if (response.statusCode == 200) {
//       return User.fromJson(json.decode(response.body));
      
//     } else {
//       // If the server did not return a 201 CREATED response,
//       // then throw an exception.
//       throw Exception('Failed to create user');
//     }
    
//   }
// }
