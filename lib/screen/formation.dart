import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation'),
        backgroundColor: const Color.fromRGBO(0, 148, 50, 1.0),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {
              // Action pour le bouton Facebook
            },
          ),
          IconButton(
            icon: Image.asset('linkedin.png', width: 20, height: 20),
            onPressed: () {
              // Action pour le bouton LinkedIn
            },
          ),
          IconButton(
            icon: Image.asset('twitter.png', width: 20, height: 20),
            onPressed: () {
              // Action pour le bouton Twitter
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            educationItem(
              'My Digital School',
              'mds.png',
              'Bachelor 3 – Concepteurs développeurs d\'applications',
            ),
            educationItem(
              'Coding Factory',
              'coding.jpg',
              'Bac +2 Développeur web',
            ),
            educationItem(
              'Lycée Paul Eluard',
              'paul.png',
              'BTS Systèmes Electronique Numériques',
            ),
          ],
        ),
      ),
    );
  }

  Widget educationItem(String institution, String logoPath, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoPath,
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      institution,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      details,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
