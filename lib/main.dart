import 'package:flutter/material.dart';

import 'package:recycle_app/layouts/intro_layout.dart';

void main() {
  runApp(const RecycleApp());
}

class RecycleApp extends StatelessWidget {
  const RecycleApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: IntroLayout(
          height: 200,
          fontSize: 25,
          text: "서울시에서 재활용을 위해 배출된 쓰레기의 절반 이상이 분류되지 못하고 버려진다고 합니다.",
        ),
      ),
    );
  }
}