import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpLayout extends StatefulWidget {
  final Widget child;
  final String? submitText;
  final void Function()? onPressed;

  const SignUpLayout({
    super.key,
    required this.child,
    this.submitText,
    this.onPressed,
  });

  @override
  State<SignUpLayout> createState() => _SignUpLayoutState();
}

class _SignUpLayoutState extends State<SignUpLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "회원가입",
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: widget.child,
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: FilledButton(
                onPressed: widget.onPressed,
                child: Text(
                  widget.submitText ?? "",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}