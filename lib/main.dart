import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(184, 233, 148, 1.0),
        brightness: Brightness.light,
      ),
      home: Scaffold(
        body: Center(
          child: DeviceScreen(),
        ),
      ),
    );
  }
}
