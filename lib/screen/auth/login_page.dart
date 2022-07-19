// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:capstone_project/component/my_alert.dart';
import 'package:capstone_project/screen/auth/api_cilent.dart';
import 'package:capstone_project/screen/auth/change_password.dart';
import 'package:capstone_project/screen/auth/forgot_password.dart';
import 'package:capstone_project/screen/auth/login_view_model.dart';
import 'package:capstone_project/model/user_model.dart';
import 'package:capstone_project/screen/home/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:capstone_project/screen/auth/signup_screen.dart';
import 'package:form_validator/form_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isHidden = true;
  User? user;
  LoginViewModel loginViewModel = LoginViewModel();
  final validator1 = ValidationBuilder().email().maxLength(50).build();
  final validatorpw = ValidationBuilder().minLength(4).maxLength(50).build();
  final _formKey = GlobalKey<FormState>();
  SharedPreferences? logindata;
  late bool newuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata!.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomeView()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.PNG"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                transformAlignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 110, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Masuk",
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ))
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 35, left: 20, right: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _emailController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail_outline_outlined,
                                color: Colors.black,
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                              ),
                            ),
                            validator: validator1),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: validatorpw,
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
                          height: 40,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blue.shade700,
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(10))),
                            height: 40,
                            width: 280,
                            child: RawMaterialButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    User? user = await loginViewModel.loginUser(
                                      _emailController.text,
                                      _passwordController.text,
                                    );

                                    if (user != null) {
                                      logindata!.setBool('login', false);
                                      logindata!.setString(
                                          'username', _emailController.text);
                                      AlertSucces(context);

                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (_) => HomeView(),
                                        ),
                                      );
                                    } else {
                                      AlertFailed(context);
                                    }
                                  }
                                },
                                child: Text('Login',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white)))),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('Atau'),
                        const SizedBox(
                          height: 30,
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
                                      new TextSpan(
                                          text: 'Tidak memiliki akun?'),
                                      TextSpan(
                                          text: ' Registrasi sekarang',
                                          style:
                                              new TextStyle(color: Colors.blue),
                                          recognizer: new TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUpScreen(),
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
                ),
              )
            ],
          ),
        ));
  }
}
