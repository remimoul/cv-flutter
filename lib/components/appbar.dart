import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: const Color.fromRGBO(0, 148, 50, 1.0),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.facebook),
          onPressed: () {
            // Action pour le bouton Facebook
          },
        ),
        IconButton(
          icon: Image.asset('assets/linkedin.png', width: 20, height: 20),
          onPressed: () {
            // Action pour le bouton LinkedIn
          },
        ),
        IconButton(
          icon: Image.asset('assets/twitter.png', width: 20, height: 20),
          onPressed: () {
            // Action pour le bouton Twitter
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
