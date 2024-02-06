import 'package:flutter/material.dart';

class SalahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/kuis-salah.png', // Gantilah dengan path gambar Anda
              width: 300, // Sesuaikan dengan ukuran gambar Anda
              height: 300, // Sesuaikan dengan ukuran gambar Anda
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 16),
              child: Text(
                "Maaf jawaban kamu salah Yuk, kerjakan soal lagi !",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Text(
            //   'Maaf jawaban kamu salah Yuk, kerjakan soal lagi !',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 18),
            // ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk pindah ke halaman berikutnya
                // Contoh: Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanBerikutnya()));
                Navigator.pop(
                    context); // Navigasi kembali ke halaman sebelumnya
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
                    'Ulangi',
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
    );
  }
}
