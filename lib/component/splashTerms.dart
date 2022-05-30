import 'package:capstone_project/screen/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashTerms extends StatefulWidget {
  SplashTerms({Key? key}) : super(key: key);

  @override
  State<SplashTerms> createState() => _SplashTermsState();
}

class _SplashTermsState extends State<SplashTerms> {
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
                height: 400,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    const Center(
                        child: Text('Syarat Pengguna & Kebijakan Privasi')),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                        'I-Vaksin telah mengeluarkan Syarat Penggunaan dan Kebijakan Privasi',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.blue.shade700)),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Syarat Penggunaan dan Kebijakan Privasi adalah sebuah ketentuan yang wajib diikuti dan disetujui oleh Pengguna I-Vaksin sebelum menggunakan aplikasi I-Vaksin'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Lihat Syarat Penggunaan dan Kebijakan Privasi di sini : '),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () => (Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))),
                      child: Text('Setuju'),
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
