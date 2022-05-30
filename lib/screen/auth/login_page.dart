// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:capstone_project/screen/auth/signup_screen.dart';
import 'package:capstone_project/screen/auth/verifikasi_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
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
                child: Column(
                  children: <Widget>[
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
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
                        prefixIcon: const Icon(Icons.lock),
                        labelText: 'Password',
                        suffix: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
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
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.topRight,
                        child: const Text('Lupa Password ?')),
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VerifikasiPage()));
                            },
                            child: Text('Login',
                                style:
                                    GoogleFonts.poppins(color: Colors.white)))),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Atau'),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 59, 89, 152),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10))),
                      height: 40,
                      width: 280,
                      child: SignInButton(
                        Buttons.Facebook,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      height: 40,
                      width: 280,
                      child: SignInButton(
                        Buttons.Google,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(10)),
                        ),
                        onPressed: () {},
                      ),
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
                                  new TextSpan(text: 'Tidak memiliki akun?'),
                                  TextSpan(
                                      text: ' Registrasi sekarang',
                                      style: new TextStyle(color: Colors.blue),
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
            )
          ],
        ));
  }
}
