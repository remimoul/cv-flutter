import 'package:flutter/material.dart';

ListTile rowInfoProfil(String text, IconData icon) {
  return ListTile(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
        const Padding(padding: EdgeInsets.only(right: 30)),
        Text(text),
      ],
    ),
  );
}
