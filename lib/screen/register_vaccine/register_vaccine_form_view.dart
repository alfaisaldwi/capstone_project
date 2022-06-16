// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:capstone_project/screen/register_vaccine/preview_vaccine_form.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class RegisterVaccineFormView extends StatefulWidget {
  RegisterVaccineFormView({Key? key}) : super(key: key);

  @override
  State<RegisterVaccineFormView> createState() =>
      _RegisterVaccineFormViewState();
}

class _RegisterVaccineFormViewState extends State<RegisterVaccineFormView> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController nik = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController tempat_lahir = TextEditingController();
  TextEditingController tanggal_lahir = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController nohp = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pendaftaran Vaksin'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Data ini bertujuan untuk pembuatan sertifikat sebagai bukti vaksinasi. Mohon isi dengan sebenar-benarnya.'),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'NIK',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: nik,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan NIK',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Nama Lengkap',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: nama,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan Nama Lengkap',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Tempat Lahir',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: tempat_lahir,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan Tempat Lahir',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Tanggal Lahir',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan Tempat Lahir',
                  ),
                  readOnly:
                      true, //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(
                            2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        dateinput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Alamat Domisili',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: alamat,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan Alamat Domisili',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'No Hp',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: nohp,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan No Hp',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Masukan Email',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Vaksinasi',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal, fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text('Vaksinasi ke : '),
                const SizedBox(
                  height: 45,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreviewVaccineForm(),
                          ));
                    },
                    child: Text('Lanjut'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
