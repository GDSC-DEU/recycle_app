import 'package:flutter/material.dart';

class PointScreen extends StatefulWidget {
  const PointScreen({super.key});

  @override
  State<PointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 200, 50, 100),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/recycle1.png'),
                  ),
                  const Text(
                    '재활용도 제대로 하고',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const Text(
                    '포인트도 벌어봐요!',
                    style: TextStyle(
                        color: Color(0xff3F7F00),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ]),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff6750A4))),
                onPressed: () {},
                child: const Text("시작하기"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
