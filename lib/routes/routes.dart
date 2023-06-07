import 'package:flutter/cupertino.dart';

import '../screens/screens.dart';

final Map<String, Widget Function(BuildContext)> AppRoutes = {
  "chat": (_) => const ChatScreen(),
  "loading": (_) => const LoadingScreen(),
  "login": (_) => const LoginScreen(),
  "register": (_) => const RegisterScreen(),
  "users": (_) => const UsersScreen(),
};
