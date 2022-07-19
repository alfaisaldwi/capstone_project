import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/ad_model.dart';
import 'package:capstone_project/model/hospital_model.dart';
import 'package:capstone_project/model/register_model.dart';
import 'package:capstone_project/model/role_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeViewModel {
  String baseUrl = 'http://13.57.43.205/';
  Dio dio = Dio();

  Future<AdModel> getAD() async {
    try {
      var token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZsdXR0ZXJAZ21haWwuY29tIiwiZXhwIjoxNjU4MjUwNjEwLCJpYXQiOjE2NTgyNDg4MTAsImlkIjo5LCJuYmYiOjE2NTgyNDg4MzUsInJvbGVfaWQiOjJ9.3jTTfoGdQDYBTblmDzcfvBhBSqjHFsBdJ7Ea8HI09uI';
      var response = await Dio().get(baseUrl + 'user/advertise',
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          }));

      if (response.statusCode == 200) {
        print(response.data);
        response.data.then((res) {
          final json = jsonDecode(res.body);
          if (json is List<Map<String, dynamic>>) {
            List<Map<String, dynamic>> myList = json;
          } else {
            print("json is not list");
          }
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    throw '';
  }
}
