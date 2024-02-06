import 'package:flutter/material.dart';
import 'package:mathedu/KuisSoal/kuisSoal3.dart';
import 'package:mathedu/pencapaian.dart';

class CompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/complete.png'),
            SizedBox(
              height: 0,
            ),
            Image.asset(
              'assets/reward_2.png',
              width: 400,
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Kamu telah sukses melengkapi puzzle ini \n'
                  'dan kamu telah berhasil melewati materi \n'
                  'pembelajaran Bab 1 : Bilangan Desimal dan \n'
                  'Bilangan Bulat dengan baik.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PencapaianPage()),
                );
                // Tambahkan logika untuk pindah ke halaman berikutnya
                // Contoh: Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanBerikutnya()));
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
                    'Simpan Pencapaian',
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
