import 'package:flutter/material.dart';
import '../components/rowinfoprofil.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromRGBO(
              0, 148, 50, 1.0), // Définit la couleur de fond en rouge
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text('Rémi MOUL', style: TextStyle(fontSize: 30)),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('avatar.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.face, size: 30),
                    SizedBox(width: 20),
                    Icon(Icons.email, size: 30),
                    SizedBox(width: 20),
                    Icon(Icons.phone, size: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: <Widget>[
                rowInfoProfil('moul.remi@orange.fr', Icons.email),
                const Divider(color: Colors.black),
                rowInfoProfil('06 12 34 56 78', Icons.phone),
                const Divider(color: Colors.black),
                rowInfoProfil('Paris', Icons.gps_fixed_rounded),
                const Divider(color: Colors.black),
                rowInfoProfil('http://google.fr/', Icons.web_asset),
                const Divider(color: Colors.black),
                rowInfoProfil('Développeur Web', Icons.person_2),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
