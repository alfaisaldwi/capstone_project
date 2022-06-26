import 'package:capstone_project/component/splashTerms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/top_terms.jpg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('I. KETENTUAN UMUM',
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'MOHON UNTUK MEMBACA SELURUH SYARAT DAN KETENTUAN PENGGUNAAN DI BAWAH INI DENGAN CERMAT DAN SAKSAMA SEBELUM MENGGUNAKAN SETIAP FITUR DAN/ATAU LAYANAN YANG TERSEDIA DALAM APLIKASI I-VAKSIN.',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold, fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Syarat dan Ketentuan Penggunaan ini adalah perjanjian antara pengguna (“Pengguna”) dan Kementerian Kesehatan Republik Indonesia selaku Penyelenggara Sistem Elektronik Aplikasi I-Vaksin (“Aplikasi”) untuk menanggulangi penyebaran Corona Virus Disease (COVID-19) dan penyakit menular lainnya. Syarat dan Ketentuan Penggunaan ini mengatur pengelolaan Data Pribadi pada Aplikasi.',
                      style: GoogleFonts.inter(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Dengan menyetujui Syarat dan Ketentuan Penggunaan ini, Pengguna juga menyetujui ketentuan penggunaan tambahan pada Aplikasi dan perubahannya yang merupakan bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan ini (“Ketentuan Penggunaan Tambahan”).',
                      style: GoogleFonts.inter(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Apabila Pengguna tidak setuju terhadap salah satu, sebagian, atau seluruh isi yang tertuang dalam Syarat dan Ketentuan Penggunaan ini, Pengguna diperkenankan untuk menghapus Aplikasi dalam perangkat elektronik dan/atau tidak menggunakan Aplikasi. Aplikasi dilepaskan dari seluruh tanggung jawab atas seluruh kerugian yang Pengguna terima sehubungan keputusan untuk tidak menggunakan Aplikasi ini.',
                      style: GoogleFonts.inter(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'II. DEFINISI',
                      style: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Setiap kata atau istilah berikut yang digunakan di dalam Syarat dan Ketentuan Penggunaan ini memiliki arti seperti berikut di bawah, kecuali jika kata atau istilah yang bersangkutan di dalam pemakaiannya dengan tegas menentukan lain:',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '“Aplikasi” adalah aplikasi dan situs website “I-Vaksin” yang dipergunakan dalam pelaksanaan surveilans Kesehatan oleh Pemerintah Republik Indonesia dalam menangani penyebaran Corona Virus Disease (COVID-19) dan penyakit menular lainnya, antara lain penelusuran (tracing), pelacakan (tracking), pemberian peringatan (warning dan fencing) di wilayah Republik Indonesia, dan dalam rangka memfasilitasi tatanan kehidupan yang baru (new normal).',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '“Pengguna”, berarti setiap orang yang menggunakan Aplikasi.',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '“Data Pribadi” atau "Informasi Pribadi", berarti setiap dan seluruh data pribadi yang diberikan oleh Pengguna Aplikasi, termasuk namun tidak terbatas pada nama, nomor identifikasi, data kesehatan, lokasi pengguna, kontak pengguna, serta dokumen dan data lainnya sebagaimana diminta pada formulir pendaftaran akun atau formulir lainnya pada saat menggunakan Aplikasi.',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                    child: Text('Kembai'),
                    onPressed: () => (Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashTerms(),
                          ),
                        ))),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
