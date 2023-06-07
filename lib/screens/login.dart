import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeBar(
                imageUrl: 'assets/Titledescription.png',
              ),
              _Form(),
              const Labels(
                firstTitle: '¿No tienes cuenta?',
                secondTitle: 'Crea una ahora',
                link: 'register',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputIcon(
          controller: emailController,
          icon: Ionicons.person_outline,
          title: 'Email adress',
          inputType: TextInputType.emailAddress,
          isPassword: false,
        ),
        InputIcon(
            icon: Ionicons.eye_outline,
            title: "Password",
            controller: passwordController,
            inputType: TextInputType.visiblePassword,
            isPassword: true),
        const SizedBox(
          height: 46,
        ),
        ButtonMain(
          text: 'Login',
          onPressed: () {},
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
