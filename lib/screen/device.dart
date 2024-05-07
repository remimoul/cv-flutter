import 'package:flutter/material.dart';
import '../screen/profil.dart';
import '../screen/experience.dart';
import '../screen/formation.dart';
import '../screen/skills.dart';
import '../screen/infos.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int _currentIndex = 0;
  final List<Widget> _screenList = [
    const ProfilScreen(),
    const ExperienceScreen(),
    const FormationScreen(),
    const SkillScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Cours Flutter - 06/05/2024'),
      //   backgroundColor: Colors.teal,
      // ),
      body: _screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 224, 48, 59),
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        currentIndex: _currentIndex,
        onTap: onTapTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Expérience'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Formation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.games), label: 'Compétences'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Infos'),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
