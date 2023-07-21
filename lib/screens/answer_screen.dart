import 'package:flutter/material.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('images/recycle2.png'),
                    ),
                    const Text(
                      '세척의 기준은 국물 자국까지 빡빡 씻어서 없애는 것이 아니라 음식물 찌꺼기가 남아 있지 않도록 하는 것이 가장 중요 합니다. 음식물 찌꺼기가 남아 있게 되면 선별이나 재활용하는 과정에서 악취를 유발하고 세균의 증식에 문제가 있기 때문에 재활용을 방해합니다.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 83,
                    height: 40,
                    child: FilledButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.resolveWith<BorderSide>(
                              (states) => BorderSide(color: Color(0xff79747E))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {},
                      child: const Text(
                        "이전",
                        style: TextStyle(
                            color: Color(0xff6750A4),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: 83,
                    height: 40,
                    child: FilledButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff6750A4))),
                      onPressed: () {},
                      child: const Text(
                        "다음",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
