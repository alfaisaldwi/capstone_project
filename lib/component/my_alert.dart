// ignore_for_file: non_constant_identifier_names, unnecessary_const

import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:capstone_project/screen/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void AlertSucces(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Berhasil",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeView())))
    ],
  ).show();
  return;
}

void AlertFailed(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "Login Gagal",
    desc: "Pastikan Email & Password benar",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context))
    ],
  ).show();
  return;
}

void AlertRegisterSucces(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Register Success",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen())))
    ],
  ).show();
  return;
}

void AlertRegisterFailed(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "Register Failed",
    desc: "Try to change Email & Make Sure Password has min 6 Character",
    buttons: [
      DialogButton(
          child: const Text(
            "Ok",
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
          onPressed: () => Navigator.pop(context))
    ],
  ).show();
  return;
}
