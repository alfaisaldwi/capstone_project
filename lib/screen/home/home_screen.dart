import 'package:flutter/material.dart';
import 'package:capstone_project/screen/certificate_screen.dart';
import 'package:capstone_project/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          // PageView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: 5,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       decoration: BoxDecoration()
          //     );
          //   }
          // ),
          FeatureCard(
            title: "Daftar Vaksin", 
            text: "Daftarkan diri anda untuk memperoleh vaksinasi secara mudah di lokasi terdekat",
            press: () {}
          ),
          FeatureCard(
            title: "Cek Status Pendaftaran", 
            text: "Daftarkan diri anda untuk memperoleh vaksinasi secara mudah di lokasi terdekat",
            press: () {}
          ),
          FeatureCard(
            title: "Cek Sertifikat", 
            text: "Daftarkan diri anda untuk memperoleh vaksinasi secara mudah di lokasi terdekat",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return const CheckCtfScreen();
                  },
                ),
              );
            }
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 5),
                InfoCard(
                  image: "" ,
                  title: "Bagaimana cara kerja vaksin?",
                  press: () {}
                ),
                const SizedBox(width: 5),
                InfoCard(
                  image: "" ,
                  title: "Bagaimana cara kerja vaksin?",
                  press: () {}
                ),
                const SizedBox(width: 5),
                InfoCard(
                  image: "" ,
                  title: "Bagaimana cara kerja vaksin?",
                  press: () {}
                ),
                const SizedBox(width: 5),
                InfoCard(
                  image: "" ,
                  title: "Bagaimana cara kerja vaksin?",
                  press: () {}
                ),
                const SizedBox(width: 5),
              ]
            ),
          ),
        const SizedBox(height: 20),
        ]
        )
      )
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback? press;
  final Color color, textColor;
  const FeatureCard({
    Key? key,
    required this.title,
    required this.text,
    required this.press, 
    this.color = kPrimaryColor, 
    this.textColor = Colors.white
  }) : super(key: key);

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
                  gradient: const LinearGradient(colors: [Color(0xFFE4F7FF), Color(0xFFC1C0FF)]),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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