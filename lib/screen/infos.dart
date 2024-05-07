import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('INFOS', style: TextStyle(fontSize: 30)),
          ],
        ));
  }
}
