import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

import '../widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                firstTitle: '¿Ya tienes una cuenta?',
                secondTitle: 'Ingresa ahora',
                link: 'login',
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
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputIcon(
          controller: nameController,
          icon: Ionicons.person_circle_outline,
          title: 'Name',
          inputType: TextInputType.name,
          isPassword: false,
        ),
        InputIcon(
            icon: Ionicons.mail_outline,
            title: "Email adress",
            controller: passwordController,
            inputType: TextInputType.emailAddress,
            isPassword: false),
        InputIcon(
            icon: Ionicons.lock_closed_outline,
            title: "Password",
            controller: passwordController,
            inputType: TextInputType.visiblePassword,
            isPassword: true),
        const SizedBox(
          height: 46,
        ),
        ButtonMain(
          text: 'Register',
          onPressed: () {},
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
