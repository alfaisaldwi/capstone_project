import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<Response> registerUser(Map<String, dynamic>? userData) async {
    try {
      Response response = await _dio.post(
        'https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser', //ENDPONT URL
        data: userData, //REQUEST BODY
      );
      //returns the successful json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }

  Future<Response> login(String email, String password,) async {
    try {
      Response response = await _dio.post(
        'https://virtserver.swaggerhub.com/Azifaazka/VaccineCaps/1.0.0/login',
        data: {'email': email, 'password': password},
      );
      //returns the successful user data json object
      return response.data;
    } on DioError catch (e) {
      //returns the error object if any
      return e.response!.data;
    }
  }
}
  

  // Future<Response> getUserProfileData() async {
  //   //GET USER PROFILE DATA
  // }

  // Future<Response> logout() async {
  //   //IMPLEMENT USER LOGOUT
  // }

// var response = await Dio().post(
    //       "https://app.swaggerhub.com/apis-docs/Azifaazka/VaccineCaps/1.0.0/user/createUser",
    //       data: {
    //         'name': name,
    //         'email': email,
    //         'password': password,
    //         'role': role
    //       });

    //   if (response.statusCode == 200) {
    //     return User(
    //         id: response.data['id'],
    //         name: response.data['name'],
    //         email: response.data['email'],
    //         password: response.data['password'],
    //         id_roles: response.data['role']);