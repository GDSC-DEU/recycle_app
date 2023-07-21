import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:recycle_app/layouts/sign_up_layout.dart';
import 'package:recycle_app/components/sign_up_completion_component.dart';

class SignUpEmailPasswordComponent extends StatefulWidget {
  const SignUpEmailPasswordComponent({ super.key });

  @override
  State<SignUpEmailPasswordComponent> createState() => _SignUpEmailPasswordComponentState();
}

class _SignUpEmailPasswordComponentState extends State<SignUpEmailPasswordComponent> {
  final _formKey = GlobalKey<FormState>();
  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  final _passwordConfirmFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SignUpLayout(
        submitText: "확실한가요?",
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.to(const SignUpCompletionComponent());
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "이메일과 패스워드를\n입력해 주세요!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              controller: _emailFieldController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "내용을 입력해 주세요";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _passwordFieldController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "내용을 입력해 주세요";
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _passwordConfirmFieldController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "내용을 입력해 주세요";
                } else if (value != _passwordFieldController.text) {
                  return "패스워드 내용이 일치하지 않습니다";
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password Confirm',
              ),
            ),
          ],
        ),
      ),
    );
  }
}