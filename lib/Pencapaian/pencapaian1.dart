import 'package:flutter/material.dart';

class Level1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 24), // Tambahkan padding kanan dan kiri
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image.asset('assets/complete.png'),
              SizedBox(
                height: 0,
              ),
              Image.asset(
                'assets/reward.png',
                width: 400,
                height: 450,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 0),
              Text(
                'Pencapaian Level 1',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Selamat kamu mendapatkan karakter \n Pythagoras',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                '#FaktaMathEdu',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
              ),
              Text(
                'Pythagoras adalah seorang matematikawan dan filsuf Yunani kuno yang dikenal sebagai Bapak Geometri. Ia hidup sekitar abad ke-6 hingga ke-5 SM Pythagoras terkenal karena Menurutnya, matematika adalah kunci untuk memahami struktur dasar alam semesta. Salah satu teorema terkenal yang diatributkan kepadanya adalah Teorema Pythagoras dalam segitiga.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Fungsi untuk kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Color(0xFF00C1FC),
                ),
                child: Container(
                  width: 300,
                  height: 50,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                  child: Center(
                    child: Text(
                      'Kembali',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
