import 'package:flutter/material.dart';

class TitleIconBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final String link;
  const TitleIconBar({Key? key, required this.title, required this.icon, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 44,
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: 16),
            height: 60,
            alignment: Alignment.centerLeft,
            child: Image(image: AssetImage(title)),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(right: 18),
            height: 60,
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, link);
                },
                child: Icon(icon)),
          ),
        )
      ],
    );
  }
}
