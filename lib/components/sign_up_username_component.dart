import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:recycle_app/layouts/sign_up_layout.dart';
import 'package:recycle_app/components/sign_up_email_password_component.dart';

class SignUpUsernameComponent extends StatefulWidget {
  const SignUpUsernameComponent({ super.key });

  @override
  State<SignUpUsernameComponent> createState() => _SignUpUsernameComponentState();
}

class _SignUpUsernameComponentState extends State<SignUpUsernameComponent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SignUpLayout(
        submitText: "회원가입 진행",
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.to(const SignUpEmailPasswordComponent());
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "당신은 이제부터 환경지키미의\n역할을 부여 받았습니다.\n\n이름을 알려주세요.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "내용을 입력해 주세요";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ],
        ),
      ),
    );
  }
}