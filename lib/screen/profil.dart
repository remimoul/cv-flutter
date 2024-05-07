import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Text('Rémi MOUL', style: TextStyle(fontSize: 30))),
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('assets/1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Center(
              child: Row(
                children: <Widget>[
                  Icon(Icons.mail),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('moul.remi@orange.fr',
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            ),
            const Center(
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0612345678', style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            ),
            const Center(
              child: Row(
                children: <Widget>[
                  Icon(Icons.gps_fixed),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Paris', style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            ),
            const Center(
              child: Row(
                children: <Widget>[
                  Icon(Icons.web),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('http://google.fr',
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            ),
            const Center(
              child: Row(
                children: <Widget>[
                  Icon(Icons.person),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Lorem ipsum dolor',
                        style: TextStyle(fontSize: 25)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
