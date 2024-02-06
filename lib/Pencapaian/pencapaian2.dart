import 'package:flutter/material.dart';

class Level2Page extends StatelessWidget {
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
              SizedBox(
                height: 0,
              ),
              Image.asset(
                'assets/reward2.png', // Ganti dengan path file gambar yang sesuai
                width: 400,
                height: 450,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 0),
              Text(
                'Pencapaian Level 2',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Selamat kamu mendapatkan karakter \n Isaac Newton',
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
                'Isaac Newton, fisikawan dan matematikawan brilian abad ke-17, terkenal dengan kontribusi besar di bidang matematika. Ia menciptakan kalkulus, teori tentang perubahan dan laju perubahan, serta merumuskan Hukum Gravitasi Universal. Newton juga berperan dalam menyusun Hukum Gerak, memberikan dasar bagi pemahaman pergerakan benda.',
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
