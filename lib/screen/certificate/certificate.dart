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
    return Scaffold(
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
    );
  }
}