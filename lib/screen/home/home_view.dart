import 'package:capstone_project/constant.dart';
import 'package:capstone_project/screen/article/article1_view.dart';
import 'package:capstone_project/screen/article/article2_view.dart';
import 'package:capstone_project/screen/cek_status_register/cek_status_view.dart';
import 'package:capstone_project/screen/certificate/certificate_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  String url = "http://13.57.43.205/user/news";
  List cardList = [
    Image.network(
        "https://ambon.go.id/wp-content/uploads/2021/01/Banner-vaksinasi.jpeg"),
    Image.network(
        "https://dinkes.acehprov.go.id/uploads/Slider_Vaksinasi_Covid-19.jpg"),
    Image.network(
        "https://www.acehnews.id/files/images/20210201-slider-pencanangan-vaksinasi-covid-19.jpg"),
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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.09, 0.44],
              colors: [Color(0xFF1789BC), Color(0xFFFFFFFF)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Color(0xFF1789BC),
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
                    height: double.infinity,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
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
                      gradient1: Color.fromARGB(132, 151, 71, 255),
                      gradient2: Color.fromARGB(113, 23, 136, 188),
                      textColor: Color.fromARGB(255, 0, 0, 0),
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
                      gradient1: Color(0xFFB6E9FF),
                      gradient2: Color(0xFFB6E9FF),
                      textColor: Color.fromARGB(125, 0, 0, 0),
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
                      gradient1: Color(0xFFB6E9FF),
                      gradient2: Color(0xFFB6E9FF),
                      textColor: Color.fromARGB(125, 0, 0, 0),
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
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 5),
                      InfoCard(
                          title: "Bagaimana cara kerja vaksin?",
                          press: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(40)),
                              ),
                              builder: (context) => Article1View(),
                              context: context,
                            );
                          }),
                      const SizedBox(width: 5),
                      InfoCard(
                          title: "Tentang vaksin Sinovac",
                          press: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(40)),
                              ),
                              builder: (context) => Article2View(),
                              context: context,
                            );
                          }),
                      const SizedBox(width: 5),
                      InfoCard(
                          title: "Bagaimana cara kerja vaksin?", press: () {}),
                      const SizedBox(width: 5),
                      InfoCard(
                          title: "Bagaimana cara kerja vaksin?", press: () {}),
                      const SizedBox(width: 5),
                    ]),
              ),
            ),
            const SizedBox(height: 20),
          ]))),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback? press;
  final Color color, textColor, gradient1, gradient2;
  const FeatureCard(
      {Key? key,
      required this.title,
      required this.text,
      required this.press,
      required this.gradient1,
      required this.gradient2,
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
          height: 95,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Container(
                width: 362,
                height: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [gradient1, gradient2]),
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
  final String title;
  final bool isActive;
  final VoidCallback? press;
  const InfoCard({
    Key? key,
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
          image: DecorationImage(
            image: NetworkImage(
                "https://s3-alpha-sig.figma.com/img/ac8d/80b9/4280245671bc75bd135e726d7990e5c6?Expires=1656288000&Signature=fqXXkg008kkg7gzAiKQlgg29s1X3E3nffxtpP~hCiPJWxfP40iKkl7APbU5McY1WDjuuqO5ec-se-VevVzn-LWCPmhvdIgaR7XlzMLVb5mHEG4gUdvg6~mBXus11IUsmvWt03gjnchXeO-N7IlWTgwoadj9D32lLiDXxVx6-9AW9T-3STSRRZkHojujOZQW95LUVBto7dhL3QlQhGh6UUCSqHBLskj7WrzXxKKH09Xq4-MqdR9wKGd-pf2bl~FCgmYvhJQd9wmQCzuf5QQdIJjhN198IpmqG1e3nygkwLfkCB7v1c-mIAcqSTVNiHgfRu8sXk-2sosbVvIzgEWepwA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
          ),
          border: Border.all(color: Color(0xFFC1E9FF)),
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFFFFF),
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
