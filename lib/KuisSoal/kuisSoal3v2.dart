import 'package:flutter/material.dart';
import 'package:mathedu/Puzzle/puzzle3v2.dart';
import 'package:mathedu/kuis.dart';
import 'package:mathedu/salah.dart';

class KuisSoal3v2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuis'),
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
              MaterialPageRoute(builder: (context) => KuisPage()), // Ganti dengan halaman utama Anda
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Soal 3",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 121,
                    height: 31,
                    margin: EdgeInsets.only(right: 35),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/puzzle-soal3v2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Image.asset(
                'assets/kuis-soal3v2.png',
                fit: BoxFit.contain,
                height: 200,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
              child: Text(
                "Dalam sebuah tugas rumah, seorang siswa harus membaca 6 halaman buku setiap hari. Jika dia sudah membaca selama 5 hari, berapa banyak halaman buku yang telah dia baca?",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("a. 30 halaman", style: TextStyle(fontSize: 16)),
                  Text("b. 15 halaman", style: TextStyle(fontSize: 16)),
                  Text("c. 25 halaman", style: TextStyle(fontSize: 16)),
                  Text("d. 10 halaman", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnswerButton(
                  text: 'A',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Puzzle3v2Page()),
                    );
                  },
                ),
                AnswerButton(
                  text: 'B',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SalahPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnswerButton(
                  text: 'C',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SalahPage()),
                    );
                  },
                ),
                AnswerButton(
                  text: 'D',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SalahPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  AnswerButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 150,
        height: 100,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFE8E8E8),
          border: Border.all(color: Color(0xFF00C1FC), width: 3.0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
