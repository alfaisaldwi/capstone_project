// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewVaccineForm extends StatefulWidget {
  PreviewVaccineForm({Key? key}) : super(key: key);

  @override
  State<PreviewVaccineForm> createState() => _PreviewVaccineFormState();
}

class _PreviewVaccineFormState extends State<PreviewVaccineForm> {
  var spaceTab = TableRow(children: [
    SizedBox(
      height: 15,
    ),
    SizedBox(
      height: 15,
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Preview', style: GoogleFonts.poppins()),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(children: [
              Card(
                margin: EdgeInsets.only(top: 2),
                elevation: 20,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                shadowColor: Colors.green[100],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        alignment: Alignment.center,
                        width: 330,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          "RS. Cipto Mangunkusumo",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.black,
                          size: 45,
                        ),
                      ),
                      title: Text(
                          'Kota Jakarta Pusat Kota Jakarta Pusat Kota Jakarta Pusat'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 36.0, right: 16, bottom: 32),
                      child: Table(
                        border: TableBorder.symmetric(
                          outside: BorderSide.none,
                          inside: BorderSide.none,
                        ),
                        children: [
                          TableRow(children: [
                            Text(
                              'Tanggal',
                              textScaleFactor: 1.0,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Senin,28 April 2022', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Sesi',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('1(08.00)', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('NIK',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('297682783752', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Nama Lengkap',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('Maria ulfa', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Tempat Lahir',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('Palangkaraya', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Tanggal Lahir',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('05 April 2022', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Alamat Domisili',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('Jl. Pangkalan No.27, Kec. Rumpit',
                                textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('No Hp',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('089743534323', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Email',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('flutter@gmail.com', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Vaksinasi',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('1', textScaleFactor: 1.0),
                          ]),
                          spaceTab,
                          TableRow(children: [
                            Text('Jenis Vaksin',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold)),
                            Text('Sinovac', textScaleFactor: 1.0),
                          ]),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 28),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Daftar'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
        ));
  }
}