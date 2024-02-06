import 'package:flutter/material.dart';
import 'package:mathedu/KuisSoal/kuisSoal1.dart';
import 'package:mathedu/KuisSoal/kuisSoal1v2.dart';
import 'package:mathedu/main.dart';

class KuisPage extends StatelessWidget {
  const KuisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis"),
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
              MaterialPageRoute(builder: (context) => MyApp()), // Ganti dengan halaman utama Anda
            );
          },
        ),
      ),
      body: ListView(
        children: [
          buildCard(
            context,
            'Level 1',
            'Bab 1 : Bilangan Desimal dan Bilangan Bulat',
            'assets/kuis-tile.png',
            KuisSoal1(),
          ),
          buildCard(
            context,
            'Level 2',
            'Bab 2 : Pengukuran per Kuantitas Unit ',
            'assets/level2.png',
            KuisSoal1v2(), // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 3',
            'Bab 3 : Perkalian Bilangan Desimal ',
            'assets/level3.png',
            null, // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 4',
            'Bab 4 : Kekongruenan dan Sudut dari Bangun Datar',
            'assets/level4.png',
            null, // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 5',
            'Bab 5 : Pembagian Bilangan Desimal',
            'assets/level5.png',
            null, // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 6',
            'Bab 6 : Volume',
            'assets/level6.png',
            null, // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 7',
            'Bab 7 : Kelipatan dan Faktor',
            'assets/level7.png',
            null, // Add your navigation logic here if needed
          ),
          buildCard(
            context,
            'Level 8',
            'Bab 8 : Pecahan',
            'assets/level8.png',
            null, // Add your navigation logic here if needed
          ),
          // Add more cards if needed
        ],
      ),
    );
  }

  // Function to build a card
  Card buildCard(
      BuildContext context,
      String title,
      String subtitle,
      String imagePath,
      Widget? destinationPage,
      ) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      shadowColor: Colors.grey[100], // Adjust the shadow color
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(subtitle),
        onTap: () {
          if (destinationPage != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destinationPage),
            );
          } else {
            // Add your navigation logic here if needed
          }
        },
      ),
    );
  }
}
