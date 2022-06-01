// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

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
                          Text("Lupa Password",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Silahkan masukkan alamat email anda yang terdaftar, kami akan mengirimkan instruksi untuk membantu mengatur ulang kata sandi anda..",
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
                                      Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(30),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          TextField(
                                            controller: _emailController,
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                  Icons
                                                      .mark_email_unread_outlined,
                                                  color: Colors.black,
                                                ),
                                                labelText: 'Email',
                                                labelStyle: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.normal,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 40,
                                    width: 300,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.grey.shade300,
                                      ),
                                      child: Text(
                                        'Kirim instruksi reset',
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
