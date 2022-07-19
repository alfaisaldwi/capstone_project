import 'dart:convert';
import 'package:capstone_project/component/my_alert.dart';
import 'package:capstone_project/model/register_model.dart';
import 'package:capstone_project/model/role_model.dart';
import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:capstone_project/screen/auth/login_view_model.dart';
import 'package:capstone_project/model/user_model.dart';
import 'package:capstone_project/screen/auth/sign_up_view_model.dart';
import 'package:flutter/gestures.dart';
import 'package:form_validator/form_validator.dart';
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
  final validator1 = ValidationBuilder().email().maxLength(50).build();
  final validatorus = ValidationBuilder().minLength(4).maxLength(50).build();

  final validatorpw = ValidationBuilder().minLength(4).maxLength(50).build();
  final _formKey = GlobalKey<FormState>();
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        validator: validatorus,
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
                      TextFormField(
                        validator: validator1,
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
                               if (_formKey.currentState!.validate()) {
                                    User? user = await loginViewModel.createDataUsers(
                                      _usernameController.text
                                      _emailController.text,
                                      _passwordController.text,
                                    );

                                    if (user != null) {
                                      AlertSucces(context);
                                      await Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (_) => LoginScreen(),
                                        ),
                                      );
                                    } else {
                                      AlertFailed(context);
                                    }}
                                
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
                                          ..onTap = () async{
                                            await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen(),
                                                ));
                                                AlertSucces(context);
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
      ),
    );
  }
}
