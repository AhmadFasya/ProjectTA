import 'package:flutter/material.dart';
import 'package:mathedu/KuisSoal/kuisSoal3.dart';

class Puzzle2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/puzzle2.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 40),
            Text(
              'Kuis Soal 2 kamu benar, selamat yaa,\nLengkapi gambar hingga selesai !',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KuisSoal3()),
                );
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
          ],
        ),
      ),
    );
  }
}
