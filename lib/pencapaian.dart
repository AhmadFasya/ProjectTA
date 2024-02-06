import 'package:flutter/material.dart';
import 'package:mathedu/Pencapaian/pencapaian1.dart';
import 'package:mathedu/Pencapaian/pencapaian2.dart';
import 'package:mathedu/main.dart';

class PencapaianPage extends StatelessWidget {
  const PencapaianPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pencapaian"),
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
            'Pencapaian Level 1',
            'assets/pencapaian-tile.png',
            Level1Page(),
          ),
          buildCard(
            context,
            'Pencapaian Level 2',
            'assets/pencapaian-tile.png',
            Level2Page(),
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
      String imagePath,
      Widget destinationPage,
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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationPage),
          );
        },
      ),
    );
  }
}
