import 'package:flutter/material.dart';
import 'package:mathedu/LatihanSoal/soalLatihan2v2.dart';
import 'package:mathedu/latihan.dart';

class SolusiSoal2v2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solusi Soal 2'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF7CE0FF), Color(0xFF47A7FF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LatihanPage()), // Ganti dengan halaman utama Anda
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 35, top: 25, bottom: 20),
              child: Text(
                "Soal 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Image.asset(
                'assets/latihansoal2v2.png',
                fit: BoxFit.contain,
                height: 200,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
              child: Text(
                "Ayah dan kakak sedang memanen pisang. Mereka mendapatkan 43,2 kg pisang dari lahan seluas 6 m² dan 62,1 kg pisang dari lahan seluas 9 m². Lahan manakah yang lebih banyak menghasilkan pisang?",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "a. Lahan 6 m² dan 9 m² sama banyak",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "b. Lahan 6 m²",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0089B3),
                    ),
                  ),
                  Text(
                    "c. Lahan 9 m²",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "d. Lahan 60 m²",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Image.asset(
                'assets/solusi-soal2v2.png',
                fit: BoxFit.contain,
                height: 300,
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 150,
                height: 50,
                margin: EdgeInsets.only(right: 35, top: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LatihanSoal2v2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color(0xFF00C1FC),
                  ),
                  child: Text(
                    'Lanjut',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
