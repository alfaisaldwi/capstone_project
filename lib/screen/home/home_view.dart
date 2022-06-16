import 'package:capstone_project/constant.dart';
import 'package:capstone_project/screen/cek_status_register/cek_status_view.dart';
import 'package:capstone_project/screen/certificate/certificate_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:capstone_project/screen/register_vaccine/list_vaccine_view.dart';
import 'package:capstone_project/screen/user/profile_user.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  List cardList = [
    Image.network("https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
    Image.network("https://picsum.photos/id/237/200/300"),
    Image.network("https://picsum.photos/id/739/200/300"),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade200,
          title: Text(
            'HomeView',
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileView(),
                    ));
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.blueAccent,
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                FeatureCard(
                    title: "Daftar Vaksin",
                    text:
                        "Daftarkan diri anda untuk memperoleh vaksinasi secara mudah di lokasi terdekat",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListVaccineView()),
                      );
                    }),
                FeatureCard(
                    title: "Cek Status Pendaftaran",
                    text:
                        "Setelah melakukan pendaftaran, silahkan cek no antrian disini.",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CekStatusView();
                          },
                        ),
                      );
                    }),
                FeatureCard(
                    title: "Cek Sertifikat",
                    text:
                        "Setelah melakukan vaksin , anda dapat cek sertifikat vaksin disini.",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CertificateView();
                          },
                        ),
                      );
                    }),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Text(
                "Seputar Vaksin",
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 5),
                    InfoCard(
                        image: "",
                        title: "Bagaimana cara kerja vaksin?",
                        press: () {}),
                    const SizedBox(width: 5),
                    InfoCard(
                        image: "",
                        title: "Bagaimana cara kerja vaksin?",
                        press: () {}),
                    const SizedBox(width: 5),
                    InfoCard(
                        image: "",
                        title: "Bagaimana cara kerja vaksin?",
                        press: () {}),
                    const SizedBox(width: 5),
                    InfoCard(
                        image: "",
                        title: "Bagaimana cara kerja vaksin?",
                        press: () {}),
                    const SizedBox(width: 5),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
        ])));
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback? press;
  final Color color, textColor;
  const FeatureCard(
      {Key? key,
      required this.title,
      required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 140,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                height: 136,
                width: double.infinity,
                // child: ElevatedButton(
                //   // style: ElevatedButton.styleFrom(
                //   //   primary: color,
                //   //   padding: const EdgeInsets.symmetric(vertical:20, horizontal: 40),
                //   //   textStyle: TextStyle(
                //   //     color: textColor, fontSize: 14, fontWeight: FontWeight.w500),
                //   // ),
                //   child: Container(),
                //   onPressed: press,
                // ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Color(0xFFE4F7FF), Color(0xFFC1C0FF)]),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 8),
                      blurRadius: 24,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 95,
                  width: MediaQuery.of(context).size.width - 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Text(
                          text,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      // const Positioned(
                      //   top: 614,
                      //   width: 24,
                      //   height: 24,
                      //   left: 356,
                      //   child: Icon(Icons.arrow_right),
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  final VoidCallback? press;
  const InfoCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 145,
        width: 148,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFD9D9D9),
          boxShadow: [
            isActive
                ? BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                    color: kActiveShadowColor,
                  )
                : BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 6,
                    color: kShadowColor,
                  ),
          ],
        ),
        child: Column(
          children: <Widget>[
            // Image.asset(image, height: 90),
            Text(
              title,
              maxLines: 2,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
