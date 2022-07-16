import 'dart:convert';
import 'package:capstone_project/model/register_model.dart';
import 'package:capstone_project/model/role_model.dart';
import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:capstone_project/screen/auth/login_view_model.dart';
import 'package:capstone_project/model/user_model.dart';
import 'package:capstone_project/screen/auth/sign_up_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  SignUpViewModel signUpViewModel = SignUpViewModel();
  LoginViewModel loginViewModel = LoginViewModel();
  bool _isHidden = true;
  User? user;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background_register.PNG"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                transformAlignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 180, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Registrasi akun",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ))
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 65, left: 20, right: 30),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _usernameController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_box_outlined,
                              color: Colors.black,
                            ),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.black,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscureText: _isHidden,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline_sharp),
                          labelText: 'Password',
                          suffix: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              _isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          labelStyle: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.blue.shade700,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          height: 40,
                          width: 280,
                          child: RawMaterialButton(
                              onPressed: () async {
                                // setState(() {
                                //   user = signUpViewModel.createDataUsers(
                                //       _usernameController.text,
                                //       _emailController.text,
                                //       _passwordController.text,);
                                // });

                                User? user =
                                    await loginViewModel.createDataUsers(
                                  _usernameController.text,
                                  _emailController.text,
                                  _passwordController.text,
                                );
                              },
                              child: Text('Registrasi',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white)))),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen());
                              },
                              child: RichText(
                                text: TextSpan(
                                  style: new TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    new TextSpan(text: 'Sudah memiliki akun?'),
                                    TextSpan(
                                        text: ' Masuk sekarang',
                                        style:
                                            new TextStyle(color: Colors.blue),
                                        recognizer: new TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen(),
                                                ));
                                          })
                                  ],
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
