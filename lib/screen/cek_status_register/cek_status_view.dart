// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:capstone_project/screen/cek_status_register/status_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CekStatusView extends StatefulWidget {
  CekStatusView({Key? key}) : super(key: key);

  @override
  State<CekStatusView> createState() => _CekStatusViewState();
}

class _CekStatusViewState extends State<CekStatusView> {

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
                TextField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        hintText: 'Masukan nama rumah sakit',
                        suffixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ))),
                const SizedBox(
                  height: 30,
                ),
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
                          width: 340,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10))),
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
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Tanggal'),
                              Text('Senin, 28 April 2022'),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sesi'),
                              Text('1 (08:00 - 10.00)'),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Vaksin'),
                              Text('Sinovac'),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Stok'),
                              Text('100'),
                            ]),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 28),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => StatusView(),
                                )
                              );
                            },
                            child: Text('Lihat'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
        )
      ),
    );
  }
}