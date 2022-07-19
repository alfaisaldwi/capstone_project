import 'package:capstone_project/component/splashscreen.dart';
import 'package:capstone_project/screen/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            checkboxTheme: CheckboxThemeData(
              checkColor: MaterialStateProperty.all(Colors.white),
              fillColor: MaterialStateProperty.all(Colors.blue),
            )),
        routes: {
          '/HomePage': (context) => HomeView(),
        },
        home: SplashScreenPage());
  }
}
