import 'package:flutter/material.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compétence'),
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
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Data',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('mysql.png', 'MySQL'),
                  listImage('nodejs.png', 'NodeJS'),
                  listImage('mongodb.png', 'MongoDB'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Web',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('react.png', 'React'),
                  listImage('html.png', 'HTML5'),
                  listImage('css.png', 'CSS'),
                  listImage('js.png', 'JavaScript'),
                  listImage('php.png', 'PHP'),
                  listImage('sass.png', 'Sass'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Mobile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('flutter.png', 'Flutter'),
                  listImage('react.png', 'React Native'),
                  listImage('expo.png', 'Expo'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Outils',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('github.png', 'GitHub'),
                  listImage('gitlab.png', 'GitLab'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listImage(String source, String label) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            source,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
