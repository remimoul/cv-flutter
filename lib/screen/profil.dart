import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ));
  }
}
