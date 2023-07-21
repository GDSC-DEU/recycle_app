import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('images/recycle2.png'),
                    ),
                    const Text(
                      '재활용품에 음식물이 묻어있다면 어떻게 해야 할까요?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF7F2FA))),
                  onPressed: () {},
                  child: const Text("그대로 배출한다.",
                      style: TextStyle(
                          color: Color(0xff6750A4),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF7F2FA))),
                  onPressed: () {},
                  child: const Text("음식물 찌꺼기만 제거한다",
                      style: TextStyle(
                          color: Color(0xff6750A4),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffF7F2FA))),
                  onPressed: () {},
                  child: const Text("음식물 자국이 없도록 깨끗하게 세척하여 배출한다",
                      style: TextStyle(
                          color: Color(0xff6750A4),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
