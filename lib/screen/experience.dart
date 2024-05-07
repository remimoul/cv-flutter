import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EXPERIENCE', style: TextStyle(fontSize: 30)),
          ],
        ));
  }
}
