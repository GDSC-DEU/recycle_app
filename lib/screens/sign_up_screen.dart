import 'package:flutter/material.dart';

import 'package:recycle_app/components/sign_up_username_component.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int _screenIndex = 0;

  final _screens = [
    const SignUpUsernameComponent(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "회원가입",
        ),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.back_hand)),
      ),
      body: _screens[_screenIndex],
    );
  }
}
