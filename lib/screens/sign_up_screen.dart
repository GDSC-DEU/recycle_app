import 'package:flutter/material.dart';

import 'package:recycle_app/components/sign_up_username_component.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ super.key });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const SignUpUsernameComponent();
  }
}