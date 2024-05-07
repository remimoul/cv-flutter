import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('FORMATION', style: TextStyle(fontSize: 30)),
          ],
        ));
  }
}
