import 'package:flutter/material.dart';

import 'package:recycle_app/layouts/sign_up_layout.dart';

class SignUpCompletionComponent extends StatefulWidget {
  const SignUpCompletionComponent({ super.key });

  @override
  State<SignUpCompletionComponent> createState() => _SignUpCompletionComponentState();
}

class _SignUpCompletionComponentState extends State<SignUpCompletionComponent> {
  @override
  Widget build(BuildContext context) {
    return SignUpLayout(
      submitText: "계속하기",
      onPressed: () => {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/check.png",
          ),
          const SizedBox(height: 20),
          const Text(
            "회원가입 완료!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}