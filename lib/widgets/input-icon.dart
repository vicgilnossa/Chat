import 'package:flutter/material.dart';

class InputIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;

  const InputIcon(
      {Key? key,
      required this.icon,
      required this.title,
      required this.controller,
      required this.inputType,
      required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 16,
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.only(
                left: 16,
                top: 8,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.black.withOpacity(0.10), width: 1)),
              width: 335,
              height: 62,
              child: TextField(
                obscureText: isPassword,
                cursorColor: Color(0xff884DFF),
                style: Theme.of(context).textTheme.labelSmall,
                autocorrect: false,
                keyboardType: inputType,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      icon,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
              )),
        ],
      ),
    );
  }
}
