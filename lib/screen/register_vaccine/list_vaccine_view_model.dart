import 'dart:collection';
import 'dart:convert';

import 'package:capstone_project/model/hospital_model.dart';
import 'package:capstone_project/model/register_model.dart';
import 'package:capstone_project/model/role_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListVaccineModel {
  String baseUrl = 'http://13.57.43.205/';
  Dio dio = Dio();

  Future<List<HospitalModel>> getAllHospital() async {
    try {
      var token =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImZsdXR0ZXJAZ21haWwuY29tIiwiZXhwIjoxNjU4MjUwNjEwLCJpYXQiOjE2NTgyNDg4MTAsImlkIjo5LCJuYmYiOjE2NTgyNDg4MzUsInJvbGVfaWQiOjJ9.3jTTfoGdQDYBTblmDzcfvBhBSqjHFsBdJ7Ea8HI09uI';
      var response = await Dio().get(baseUrl + 'user/hospitals',
          options: Options(headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          }));

      if (response.statusCode == 200) {
        print(response.data);
        var getUsersData = response.data as List;
        List jsonResponse = json.decode(response.data);
        return jsonResponse
            .map((data) => new HospitalModel.fromJson(data))
            .toList();
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    throw '';
  }
}
