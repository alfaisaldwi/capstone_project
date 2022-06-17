// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Certificate extends StatefulWidget {
  Certificate({Key? key}) : super(key: key);

  @override
  State<Certificate> createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
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
          title: Text('Sertifikat',
            style: GoogleFonts.poppins(
              color: Colors.white
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Download Sertifikat',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}