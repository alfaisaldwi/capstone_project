import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Article2View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                'Tentang vaksin Sinovac',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Inter', 
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                )
              ),
              SizedBox(height: 10),
              Text('Vaksin sinovac adalah vaksin untuk mencegah infeksi virus SARS-Cov-2 atau COVID-19. Vaksin sinovac dikenal juga dengan nama CoronaVac sudah mendapati izin pemggunaan darurat dari Badan pengawas Obat dan Makanan (BPOM) RI.'),
              SizedBox(height: 10),
              Text('CoronaVac merupakan vaksin yang mengandung virus SARS-CoV-2 yang sudah tidak aktif. Penyuntikan vaksin Sinovac akan memicu sistem kekebalan tubuh untuk mengenali virus yang sudah tidak aktif ini dan memproduksi antibodi untuk melawannya sehingga tidak terjadi infeksi COVID-19.'),
              SizedBox(height: 10),
              Text('Di dalam produk vaksin ini juga terkandung aluminium hidroksida sebagai bahan tambahan yang berfungsi untuk meningkatkan respons sistem kekebalan tubuh terhadap vaksin.'),
              SizedBox(height: 10),
              Text('Vaksin Sinovac dikembangkan oleh Sinovac Biotech Ltd. Vaksin ini sudah melewati uji klinis fase ketiga yang dilakukan di Brazil, Turki, dan Indonesia. Uji klinis fase ketiga di Indonesia menunjukkan nilai efikasi vaksin, yaitu efek perlindungan terhadap COVID-19, sebesar 65,3%.'),
              SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}