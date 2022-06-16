import 'package:flutter/material.dart';
import 'package:capstone_project/constant.dart';

class DaftarScreen extends StatefulWidget {
  const DaftarScreen({ Key? key }) : super(key: key);

  @override
  State<DaftarScreen> createState() => _DaftarScreenState();
}

class _DaftarScreenState extends State<DaftarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Vaksin"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text("Terdekat dari lokasimu"),
            // ListTile(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  RichText(
                    text: const TextSpan(
                      text: "Vaccine Facility",
                      style: kTitleTextstyle,
                    ),
                  ),
                ]),
                // FutureBuilder<List<FacilityModel>>(
                //   future: futureData,
                //   builder: (context, snapshot) {
                //     if (snapshot.hasData) {
                //       List<FacilityModel>? data = snapshot.data;
                //       return ListView.builder(
                //           shrinkWrap: true,
                //           itemCount: data?.length,
                //           itemBuilder: (BuildContext context, int index) {
                //             return FacilityCard(
                //               futureData: data![index],
                //             );
                //           });
                //     } else if (snapshot.hasError) {
                //       return Text("${snapshot.error}");
                //     }
                //     return const CircularProgressIndicator();
                //   },
                // )
              ])
            ),
          ],
        ),
      ),
    );
  }
}