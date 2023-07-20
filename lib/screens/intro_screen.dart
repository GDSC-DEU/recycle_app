import 'package:flutter/material.dart';

import 'package:recycle_app/components/slide_horizontal_component.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SlideHorizontalComponent(),
    );
  }
}