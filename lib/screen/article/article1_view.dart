import 'package:capstone_project/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Article1View extends StatelessWidget {
  final bool isActive;

  const Article1View({
    Key? key, 
    this.isActive = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // boxShadow: [
            //   isActive
            //     ? BoxShadow(
            //       offset: const Offset(0, 10),
            //       blurRadius: 100,
            //       color: Color.fromARGB(15, 0, 0, 0),
            //     )
            //     : BoxShadow(
            //       offset: const Offset(0, 3),
            //       blurRadius: 100,
            //       color: Color.fromARGB(15, 0, 0, 0),
            //     ),
            // ],
          ),
          child: Column(
            children: [
              SizedBox(height: 5),
              Text('Artikel',
                style: GoogleFonts.poppins(
                    color: Color(0xFF02638C)),
              ),
              SizedBox(height: 5),
            ]
          )
        ),
        Container(
          color: Color.fromARGB(255, 209, 237, 247),
          margin: EdgeInsets.all(1),
          padding: EdgeInsets.only(top: 5, left: 20, right: 20),
          child: Column(
            children: [
              Text(
                'Bagaimana cara kerja vaksin?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Inter', 
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                )
              ),
              SizedBox(height: 10),
              Text('Begitu tubuh memproduksi antibodi dalam respons utamanya terhadap suatu antigen, tubuh juga menciptakan sel memori penghasil antibodi, yang tetap hidup bahkan setelah patogen dikalahkan oleh antibodi.'),
              SizedBox(height: 10),
              Text('Jika tubuh terpapar ke patogen yang sama lebih dari sekali, respons antibodi jauh lebih cepat dan lebih efektif daripada yang pertama kali terjadi karena sel-sel memori yang sudah ada siap untuk memicu keluarnya antibodi untuk melawan antigen itu.'),
              SizedBox(height: 10),
              Text('Dengan adanya sel memori yang ada didalam tubuh maka mampu mengenali patogen yang menyerang dan segera membangkitkan antibosi untuk mengatasinya. Pada kondisi patogen baru yang menyerang maka tubuh tidak memilki sel memori untuk patogen terbut; dan membutuhkan waktu untuk mengenali dan menciptakan sel memori.'),
              SizedBox(height: 70),
            ],
          ),
        ),
      ],
    );
  }
}