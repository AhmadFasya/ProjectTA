import 'package:flutter/material.dart';
import 'package:mathedu/LatihanSoal/soalLatihan1.dart';
import 'package:mathedu/LatihanSoal/soalLatihan1v2.dart';
import 'package:mathedu/main.dart';

class LatihanPage extends StatelessWidget {
  const LatihanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan"),
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
          // Card for Bab 1
          buildCard(
            context,
            'Bab 1 : Bilangan Desimal dan Bilangan Bulat',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            LatihanSoal1(),
          ),
          // Card for Bab 2
          buildCard(
            context,
            'Bab 2 : Pengukuran per Kuantitas Unit ',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
              LatihanSoal1v2(), // Add your navigation logic here if needed
          ),
          // Card for Bab 3
          buildCard(
            context,
            'Bab 3 : Perkalian Bilangan Desimal ',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            null, // Add your navigation logic here if needed
          ),
          // Card for Bab 4
          buildCard(
            context,
            'Bab 4 : Kekongruenan dan Sudut dari Bangun Datar',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            null, // Add your navigation logic here if needed
          ),
          // Card for Bab 5
          buildCard(
            context,
            'Bab 5 : Pembagian Bilangan Desimal',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            null, // Add your navigation logic here if needed
          ),
          // Card for Bab 6
          buildCard(
            context,
            'Bab 6 : Volume',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            null, // Add your navigation logic here if needed
          ),
          // Card for Bab 7
          buildCard(
            context,
            'Bab 7 : Kelipatan dan Faktor',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
            null, // Add your navigation logic here if needed
          ),
          // Card for Bab 8
          buildCard(
            context,
            'Bab 8 : Pecahan',
            'Semester 1',
            'assets/img-list.png', // Replace with your image path
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
