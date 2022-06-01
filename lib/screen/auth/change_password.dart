// ignore_for_file: unnecessary_new

import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();
  bool _isHidden = true;
  bool _isHidden2 = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
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
              color: Colors.white,
              transformAlignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(18, 170, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Ubah Password",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Buat password baru, dengan minimal 10 karakter. Pastikan mengandung huruf besar dan kecil, angka, dan simbol.",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.normal)),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, // set border color
                                      width: 2.0),
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(30),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          TextField(
                                            obscureText: _isHidden,
                                            controller: _passwordController,
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                  Icons.lock_outline_sharp,
                                                  color: Colors.black,
                                                ),
                                                labelText: 'Password Baru',
                                                suffix: InkWell(
                                                  onTap: _togglePasswordView,
                                                  child: Icon(
                                                    _isHidden
                                                        ? Icons.visibility
                                                        : Icons.visibility_off,
                                                  ),
                                                ),
                                                labelStyle: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey),
                                                focusedBorder:
                                                    const UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                )),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            obscureText: _isHidden2,
                                            controller: _passwordController2,
                                            decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                  Icons.lock_outline_sharp),
                                              labelText: 'Ulangi Password',
                                              suffix: InkWell(
                                                onTap: _togglePasswordView2,
                                                child: Icon(
                                                  _isHidden2
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                ),
                                              ),
                                              labelStyle: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                              focusedBorder:
                                                  const UnderlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 300,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  (SuccesChangePassword()),
                                            ));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey.shade300,
                                      ),
                                      child: Text(
                                        'Ubah',
                                        style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}

class SuccesChangePassword extends StatefulWidget {
  SuccesChangePassword({Key? key}) : super(key: key);

  @override
  State<SuccesChangePassword> createState() => _SuccesChangePasswordState();
}

class _SuccesChangePasswordState extends State<SuccesChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              transformAlignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(18, 240, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.blue, // set border color
                                      width: 3.0),
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(50))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(30),
                                  child: Center(
                                    child: Column(children: [
                                      Text(
                                        'Berhasil!',
                                        style: GoogleFonts.poppins(
                                            color: Colors.blue, fontSize: 26),
                                      ),
                                      Text(' Passwordmu berhasil diubah',
                                          style: GoogleFonts.poppins(
                                              color: Colors.blue,
                                              fontSize: 16)),
                                      const SizedBox(
                                        height: 70,
                                      ),
                                      SizedBox(
                                        height: 60,
                                        width: 250,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      (LoginScreen()),
                                                ));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary:
                                                Colors.blue.withOpacity(0.7),
                                          ),
                                          child: Center(
                                              child: Text(
                                            'Kembali kehalaman Login',
                                            style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          )),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
