import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Profile",
                  style: GoogleFonts.dmSans(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(
                    radius: 40,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nombre",
                      style: GoogleFonts.dmSans(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "correo@gmail.com",
                      style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Ionicons.create_outline)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 132,
              width: double.infinity,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 22, top: 8),
                    child: Text("Balance"),
                  ),
                  ListTile(
                      title: Transform.translate(
                        offset: Offset(10, 0),
                        child: Text(
                          "Account Visibility",
                          style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0A0A0A)),
                        ),
                      ),
                      trailing: Container(
                        width: 59,
                        height: 32,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF1DA664),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: Text(
                          "Active",
                          style: GoogleFonts.dmSans(
                              fontSize: 12, color: Colors.white),
                        ),
                      )),
                  ListTile(
                    title: Transform.translate(
                      offset: Offset(10, 0),
                      child: Text(
                        "Card Management",
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0A0A0A)),
                      ),
                    ),
                    trailing: const Icon(
                      Ionicons.chevron_forward_outline,
                      color: Color(0xFF0A0A0A),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 22, top: 8),
                    child: Text("Account Settings"),
                  ),
                  ListTile(
                    title: Transform.translate(
                      offset: Offset(10, 0),
                      child: Text(
                        "Profile Management",
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0A0A0A)),
                      ),
                    ),
                    trailing: Icon(
                      Ionicons.chevron_forward_outline,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  ListTile(
                    title: Transform.translate(
                      offset: Offset(10, 0),
                      child: Text(
                        "Help",
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0A0A0A)),
                      ),
                    ),
                    trailing: Icon(
                      Ionicons.chevron_forward_outline,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  ListTile(
                    title: Transform.translate(
                      offset: Offset(10, 0),
                      child: Text(
                        "Switch Account",
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF0A0A0A)),
                      ),
                    ),
                    trailing: Icon(
                      Ionicons.chevron_forward_outline,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
