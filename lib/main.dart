import 'package:chat_app/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'chat',
        routes: AppRoutes,
        theme: ThemeData(
            textTheme: TextTheme(
                labelSmall: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff000000)),
                bodySmall: GoogleFonts.dmSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8F9BB3)),
                bodyMedium: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.5)),
                bodyLarge: GoogleFonts.dmSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)))));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    const Center(
      child: Icon(
        Icons.call,
        size: 150,
      ),
    ),
    const UsersScreen(),
    const Center(
      child: Icon(
        Icons.camera,
        size: 150,
      ),
    ),
    const Center(
      child: Icon(
        Icons.camera,
        size: 150,
      ),
    ),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            setState(() {});
            index = i;
          },
          iconSize: 25,
          unselectedItemColor: Color(0xff878787),
          selectedItemColor: Color(0xff884DFF),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Ionicons.home,
                )),
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Ionicons.chatbubble_ellipses,
                )),
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Ionicons.game_controller,
                )),
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Ionicons.person,
                ))
          ]),
      body: screens.elementAt(index),
    );
  }
}
