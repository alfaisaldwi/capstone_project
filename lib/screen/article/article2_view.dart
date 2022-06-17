import 'package:flutter/material.dart';

class Article2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

        ),
        Container(
          padding: EdgeInsets.all(20),
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
              SizedBox(height: 20),
              Text('Begitu tubuh memproduksi antibodi dalam respons utamanya terhadap suatu antigen, tubuh juga menciptakan sel memori penghasil antibodi, yang tetap hidup bahkan setelah patogen dikalahkan oleh antibodi.'),
              SizedBox(height: 10),
              Text('Jika tubuh terpapar ke patogen yang sama lebih dari sekali, respons antibodi jauh lebih cepat dan lebih efektif daripada yang pertama kali terjadi karena sel-sel memori yang sudah ada siap untuk memicu keluarnya antibodi untuk melawan antigen itu.'),
              SizedBox(height: 10),
              Text('Dengan adanya sel memori yang ada didalam tubuh maka mampu mengenali patogen yang menyerang dan segera membangkitkan antibosi untuk mengatasinya. Pada kondisi patogen baru yang menyerang maka tubuh tidak memilki sel memori untuk patogen terbut; dan membutuhkan waktu untuk mengenali dan menciptakan sel memori.'),
            ],
          ),

        ),
      ],
    );
  }
}