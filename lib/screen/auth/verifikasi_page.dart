// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifikasiPage extends StatefulWidget {
  VerifikasiPage({Key? key}) : super(key: key);

  @override
  State<VerifikasiPage> createState() => _VerifikasiPageState();
}

class _VerifikasiPageState extends State<VerifikasiPage> {
  final TextEditingController _emailController = TextEditingController();

  bool _onEditing = true;
  String? _code;

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
                      padding: const EdgeInsets.fromLTRB(15, 170, 15, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Verifikasi Akun",
                              style: GoogleFonts.poppins(
                                  fontSize: 25, fontWeight: FontWeight.normal)),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                              "Masukkan 4 digit kode verfikasi yang dikirimkan ke  Pan*****@gmail.com",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.normal)),
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 90),
                                    child: Center(
                                      child: Text(
                                        '',
                                        style: TextStyle(fontSize: 20.0),
                                      ),
                                    ),
                                  ),
                                  VerificationCode(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                    keyboardType: TextInputType.number,
                                    underlineColor: Colors
                                        .amber, // If this is null it will use primaryColor: Colors.red from Theme
                                    length: 4,
                                    cursorColor: Colors
                                        .blue, // If this is null it will default to the ambient
                                    // clearAll is NOT required, you can delete it
                                    // takes any widget, so you can implement your design
                                    // clearAll: Padding(
                                    //   padding: const EdgeInsets.all(8.0),
                                    //   child: Text(
                                    //     'Hapus Semua',
                                    //     style: TextStyle(
                                    //         fontSize: 14.0,
                                    //         decoration:
                                    //             TextDecoration.underline,
                                    //         color: Colors.blue[700]),
                                    //   ),
                                    // ),
                                    onCompleted: (String value) {
                                      setState(() {
                                        _code = value;
                                      });
                                    },
                                    onEditing: (bool value) {
                                      setState(() {
                                        _onEditing = value;
                                      });
                                      if (!_onEditing)
                                        FocusScope.of(context).unfocus();
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: _onEditing
                                          ? Text('')
                                          : Text('Your code: $_code'),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Verifikasi'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                              child: Text('Tidak menerima kode?',
                                  style: GoogleFonts.poppins())),
                          Center(
                            child: Text(
                              'Kirim ulang',
                              style: GoogleFonts.poppins(color: Colors.blue),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
