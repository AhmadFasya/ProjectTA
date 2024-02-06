import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mathedu/kuis.dart';
import 'package:mathedu/latihan.dart';
import 'package:mathedu/pencapaian.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xFF7CE0FF), const Color(0xFF47A7FF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Baris Pertama
              Container(
                margin: EdgeInsets.only(
                    bottom: 60), // Adjust the margin to move the logo higher
                child: Image.asset(
                  'assets/Logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              // Baris Kedua
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Container Latihan
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LatihanPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/latihan.png',
                              width: 140,
                              height: 140,
                            ),
                            Text(
                              'Latihan',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container Kuis
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KuisPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/kuis.png',
                              width: 140,
                              height: 140,
                            ),
                            Text(
                              'Kuis',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container Pencapaian
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PencapaianPage()),
                  );
                },
                child: Container(
                  // margin: EdgeInsets.all(5),
                  margin: EdgeInsets.only( top: 5,
                    bottom: 120),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/pencapaian.png',
                        width: 140,
                        height: 140,
                      ),
                      Text(
                        'Pencapaian',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Footer
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xFF7CE0FF), const Color(0xFF47A7FF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Transform.translate(

            offset: Offset(0.0, -30.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  _showModal(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                  primary: Colors.red,
                ),
                child: Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 190,
            child: Column(
              children: [
                Image.asset(
                  'assets/keluar.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(height: 10),
                Text('Apakah kamu ingin keluar?'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Tidak',
                style: TextStyle(
                  color: Color(0xFF00C1FC),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
              child: Text(
                'Ya',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }


}