import 'package:chat_app/models/users.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final usuarios = [
    User(
        online: true,
        name: 'Martha',
        email: 'martha@gmail.com',
        uid: '1',
        lastmessagedate: 'Today',
        lastmessagetext: 'That´s a great game of us, hope we'),
    User(
        online: false,
        name: 'Ryan',
        email: 'ryan@gmail.com',
        uid: '2',
        lastmessagedate: '04:12',
        lastmessagetext: 'That´s a great game of us, hope we'),
    User(
        online: false,
        name: 'Diego',
        email: 'diego@gmail.com',
        uid: '3',
        lastmessagedate: 'Just now',
        lastmessagetext: 'That´s a great game of us, hope we can create'),
    User(
        online: false,
        name: 'Diego',
        email: 'diego@gmail.com',
        uid: '3',
        lastmessagedate: 'Just now',
        lastmessagetext: 'That´s a great game of us, hope we can create'),
    User(
        online: false,
        name: 'Diego',
        email: 'diego@gmail.com',
        uid: '3',
        lastmessagedate: 'Just now',
        lastmessagetext: 'That´s a great game of us, hope we can create'),
    User(
        online: false,
        name: 'Diego',
        email: 'diego@gmail.com',
        uid: '3',
        lastmessagedate: 'Just now',
        lastmessagetext: 'That´s a great game of us, hope we can create'),
  ];
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleIconBar(
              title: 'assets/messagestitle.png',
              icon: Ionicons.close_circle_outline,
              link: 'login',
            ),
            const SizedBox(
              height: 8,
            ),
            const SearchBar(),
            const SizedBox(
              height: 44,
            ),
            Expanded(
              child: SmartRefresher(
                  
                  onRefresh: loadUsers,
                  enablePullDown: true,
                  controller: _refreshController,
                  child: listViewMessages()),
            )
          ],
        ),
      ),
    );
  }

  ListView listViewMessages() {
    return ListView.builder(
      itemBuilder: (context, index) => _userMessageTile(usuarios[index]),
      itemCount: usuarios.length,
    );
  }

  ListTile _userMessageTile(User usuarios) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 16.5, horizontal: 16),
      leading: CircleAvatar(
        radius: 40,
        child: Text(usuarios.name.substring(0, 2)),
      ),
      title: Transform.translate(
        offset: Offset(-16, 0),
        child: Text(
          usuarios.name,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      subtitle: Transform.translate(
        offset: Offset(-16, 0),
        child: Text(
          usuarios.lastmessagetext,
          style: Theme.of(context).textTheme.bodySmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: Text(usuarios.lastmessagedate,
          style: GoogleFonts.plusJakartaSans(
              fontSize: 11, fontWeight: FontWeight.w400)),
    );
  }

  loadUsers() async {
    await Future.delayed(Duration(milliseconds: 1000));

    _refreshController.refreshCompleted();
  }
}
