import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMain extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonMain({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 62,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            backgroundColor: Color(0xff884DFF),
          ),
          child: Text(text,
              style: GoogleFonts.dmSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white))),
    );
  }
}
