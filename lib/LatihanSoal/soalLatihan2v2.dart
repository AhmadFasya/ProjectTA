import 'package:flutter/material.dart';
import 'package:mathedu/Solusi/solusiSoal2v2.dart';
import 'package:mathedu/latihan.dart';

class LatihanSoal2v2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal Latihan'),
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
                    style: TextStyle(fontSize: 16),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnswerButton(
                  text: 'A',
                  onPressed: () {
                    showResultDialog(context, false);
                  },
                ),
                AnswerButton(
                  text: 'B',
                  onPressed: () {
                    showResultDialog(context, true);
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
                    showResultDialog(context, false);
                  },
                ),
                AnswerButton(
                  text: 'D',
                  onPressed: () {
                    showResultDialog(context, false);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
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
                      MaterialPageRoute(builder: (context) => SolusiSoal2v2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color(0xFF00C1FC),
                  ),
                  child: Text(
                    'Solusi',
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
              height: 16,
            )
          ],
        ),
      ),
    );
  }

  void showResultDialog(BuildContext context, bool isCorrect) {
    String actionButtonLabel = isCorrect ? 'Lanjut' : 'Kembali';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // title:
          // Text(isCorrect ? 'Jawaban Anda Benar!' : 'Jawaban Anda Salah!'),
          content: Container(
            height: 190,
            child: Column(
              children: [
                isCorrect
                    ? Image.asset('assets/benar.png', height: 150, width: 150)
                    : Image.asset('assets/salah.png', height: 130, width: 130),
                SizedBox(height: 16),
                isCorrect
                    ? Text('Selamat jawaban kamu benar !')
                    : Text('Maaf, jawaban kamu salah.Silakan coba lagi.',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          actions: [
            if (isCorrect)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SolusiSoal2v2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF00C1FC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Ok'),
              )
            else
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF00C1FC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Kembali'),
              ),
          ],
        );
      },
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
