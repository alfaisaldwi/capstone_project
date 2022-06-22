// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:capstone_project/screen/certificate/certificate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificateView extends StatefulWidget {
  CertificateView({Key? key}) : super(key: key);

  @override
  State<CertificateView> createState() => _CertificateViewState();
}

class _CertificateViewState extends State<CertificateView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1],
          colors: [Color(0xFFFFFFFF), Color(0xFFE3F5FD)]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Cek Sertifikat',
            style: GoogleFonts.poppins(
              color: Colors.white
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              buildNIKField(),
              buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNIKField() {
    final _certiController = TextEditingController();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'NIK',
        style: GoogleFonts.poppins(
          color: Colors.black
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      TextField(
        controller: _certiController,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: 'Masukkan NIK',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
            side: BorderSide(color : Color(0xFF1789BC), width: 1),
            primary: Color.fromARGB(255, 255, 255, 255),
            padding: const EdgeInsets.symmetric(vertical:20, horizontal: 40),
          ),
          child: Text(
            'Lanjut',
            style: TextStyle(color: Color(0xFF1789BC), fontSize: 14, fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Certificate();
                },
              ),
            );
          },
        )
      )
    );
  }
}