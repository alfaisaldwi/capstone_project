import 'package:capstone_project/component/splashTerms.dart';
import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:capstone_project/screen/home/home_view.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  SharedPreferences? logindata;
  late bool newuser;

  @override
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata!.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomeView()));
    } else {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => SplashTerms()));
    }
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return SplashTerms();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/splash1.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
