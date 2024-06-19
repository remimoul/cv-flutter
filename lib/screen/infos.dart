import 'package:cv_flutter/components/appbar.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Infos +'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            infoItem(
              'Boxe Anglaise',
              'boxe.jpg',
              'Je pratique la boxe anglaise depuis 10 ans. J\'ai commencé ce sport pour me défouler et me dépenser. J\'ai rapidement accroché et je m\'entraîne régulièrement pour progresser.',
            ),
            const SizedBox(height: 20),
            infoItem(
              'Passionné de photographie',
              'voyage.jpg',
              'J\'aime voyager et prendre des photos. J\'ai commencé la photographie il y a 5 ans et j\'ai appris à capturer des moments uniques et à les partager avec les autres.',
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(String title, String imagePath, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
        const Divider(
          height: 30,
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}
