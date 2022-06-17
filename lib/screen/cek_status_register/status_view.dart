import 'package:capstone_project/screen/cek_status_register/preview_status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusView extends StatefulWidget {
  StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  var spaceTab = const TableRow(children: [
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
        title: Text(
          'Status Pendaftaran',
            style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PreviewStatus(),
                    )
                  );
                },
                child: Card(
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
                            "No. Antrian",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
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
                              Text('NIK',
                                textScaleFactor: 1.0,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('5209012349999991', textScaleFactor: 1.0),
                            ]),
                            spaceTab,
                            TableRow(children: [
                              Text('Nama Lengkap',
                                  textScaleFactor: 1.0,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                              Text('Maria', textScaleFactor: 1.0),
                            ]),
                            spaceTab,
                            TableRow(children: [
                              Text('Tanggal lahir',
                                  textScaleFactor: 1.0,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold)),
                              Text('5 April 2022', textScaleFactor: 1.0),
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
                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: Padding(
                      //     padding: EdgeInsets.only(right: 28),
                      //     child: ElevatedButton(
                      //       onPressed: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //             builder: (context) => PreviewStatus(),
                      //           )
                      //         );
                      //       },
                      //       child: Text('Daftar'),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  ),
                ),
              )
            ],
          ),
      )
    );
  }
}