import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBox extends StatelessWidget {
  final String text;
  final String chatUserId;
  

  const ChatBox({Key? key, required this.text, required this.chatUserId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: chatUserId == "123" ? myMessage() : notMyMessage());
  }

  Widget notMyMessage() => Align(
        alignment: Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 261,
          ),
          margin: EdgeInsets.only(left: 16, bottom: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff884DFF),
          ),
          child: Text(
            text,
            style: GoogleFonts.dmSans(
              color: Color(0xffffffff),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );

  Widget myMessage() => Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 261,
          ),
          margin: EdgeInsets.only(right: 16, bottom: 16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffEDF1F7),
          ),
          child: Text(
            text,
            style: GoogleFonts.dmSans(
              color: Color(0xff884DFF),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
}
