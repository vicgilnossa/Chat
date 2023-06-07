import 'package:flutter/material.dart';

class WelcomeBar extends StatelessWidget {
  final String imageUrl;
  const WelcomeBar({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      margin: const EdgeInsets.only(top: 35, left: 30),
      child: Image(
        image: AssetImage(imageUrl),
      ),
    );
  }
}
