import 'package:flutter/material.dart';

class SignUpUsernameComponent extends StatefulWidget {
  const SignUpUsernameComponent({super.key});

  @override
  State<SignUpUsernameComponent> createState() =>
      _SignUpUsernameComponentState();
}

class _SignUpUsernameComponentState extends State<SignUpUsernameComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [],
        ),
        FilledButton(
          onPressed: () {},
          child: Text("회원가입 진행"),
        ),
      ],
    );
  }
}
