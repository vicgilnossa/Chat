import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String link;
  const Labels({Key? key, required this.firstTitle, required this.secondTitle, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150,
        width: 190,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            firstTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 6,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, link);
            },
            child: Text(
              secondTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ]),
      ),
    );
  }
}
