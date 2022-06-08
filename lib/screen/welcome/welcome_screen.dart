// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:capstone_project/button.dart';
import 'package:capstone_project/screen/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text('Welcome to Co19tion',
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: size.height *0.05),
              Image.asset(
                'assets/logo.png',
                height: size.height * 0.5
              ),
              SizedBox(height: size.height *0.05),
              // StartButton(
              //   text: 'LOGIN',
              //   press: () {
              //     Navigator.of(context).push(
              //       PageRouteBuilder(
              //         pageBuilder: (context, animation, secondaryAnimation) {
              //           return const LoginScreen();
              //         },
              //         transitionsBuilder: (context, animation, secondaryAnimation, child) {
              //           final tween = Tween(begin: 0.0, end: 1.0);
              //           return FadeTransition(
              //             opacity: animation.drive(tween),
              //             child: child,
              //           );
              //         },
              //       ),
              //     );
              //   },
              // ),
              SizedBox(height: size.height *0.01),
              Button(
                text: 'Next',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return const HomeScreen();
                      },
                    ),
                  );
                }
              ),
            ]
          ),
      ),
    ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key, 
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     'assets/images/main_top.png',
          //     width: size.width * 0.3
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset(
          //     'assets/images/main_bottom.png',
          //     width: size.width * 0.2
          //   ),
          // ),
          child,
        ],
      )
    );
  }
}