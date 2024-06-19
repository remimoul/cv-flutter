import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expériences'),
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
            experienceItem(
                'Ministère de l\'Écologie',
                'ministere.png',
                'www.ecologie.gouv.fr/',
                'Développeur Full Stack (2023-actuellement)',
                'Développement de nouvelles fonctionnalités pour un projet interne sur l`\'Ecologie. Création de solutions innovantes pour améliorer l\'expérience utilisateur et garantir la scalabilité de l\'application.'),
            experienceItem(
              'Silence des Justes',
              'silence.png',
              'Développeur web Stagiaire - Mai 2023 - 3 mois',
              'Création d\'un site web pour des cours de soutien scolaire.',
              'Utilisation de technologies telles que HTML, CSS, JavaScript, et PHP pour le développement du site.',
            ),
            experienceItem(
              'Taxis G7',
              'g7.png',
              'Technicien Electronique - 2017 - 2022',
              'Maintenance et réparation des équipements électroniques des taxis.',
              'Mesures et test de la qualité des équipements électroniques et rédaction de rapports techniques.',
            ),
          ],
        ),
      ),
    );
  }

  Widget experienceItem(String company, String logoPath, String title,
      String description, String additionalInfo) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                logoPath,
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    company,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(description),
          if (additionalInfo.isNotEmpty) ...[
            const SizedBox(height: 5),
            Text(additionalInfo),
          ],
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
