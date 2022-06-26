import 'package:capstone_project/component/term_privacy.dart';
import 'package:capstone_project/component/terms_page.dart';
import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashTerms extends StatefulWidget {
  SplashTerms({Key? key}) : super(key: key);

  @override
  State<SplashTerms> createState() => _SplashTermsState();
}

class _SplashTermsState extends State<SplashTerms> {
  bool _checkbox = false;
  bool _checkbox2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash2.png"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 440,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      'Syarat Pengguna & Kebijakan Privasi',
                      style: GoogleFonts.poppins(color: Colors.blue),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                        'I-Vaksin telah mengeluarkan Syarat Penggunaan dan Kebijakan Privasi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue.shade700)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Syarat Penggunaan dan Kebijakan Privasi adalah sebuah ketentuan yang wajib diikuti dan disetujui oleh Pengguna I-Vaksin sebelum menggunakan aplikasi I-Vaksin',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lihat Syarat Penggunaan dan Kebijakan Privasi di sini : ',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TermsPage()));
                            },
                            child: Text('Syarat Penggunaan',
                                style: GoogleFonts.poppins(
                                    color: Colors.blue, fontSize: 12)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Checkbox(
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              },
                            ),
                          ),
                        ]),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TermsPrivacy(),
                                )),
                            child: Text(
                              'Kebijakan Privasi',
                              style: GoogleFonts.poppins(
                                  color: Colors.blue, fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Checkbox(
                              value: _checkbox2,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox2 = !_checkbox2;
                                });
                              },
                            ),
                          ),
                        ]),
                    Text(
                      'Dengan menyatakan “Setuju”, maka Anda menerima segala isi Syarat Penggunaan dan Kebijakan Privasi yang berlaku.',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () => 
                      (
                        Navigator.push( 
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))),
                              
                      child: const Text('Setuju'),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
    ;
  }
}
