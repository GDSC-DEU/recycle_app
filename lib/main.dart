import 'package:flutter/material.dart';

import 'package:recycle_app/screens/intro_screen.dart';
import 'package:recycle_app/screens/contents_screen.dart';

import 'screens/contents_screen.dart';

void main() {
  runApp(const RecycleApp());
}

class RecycleApp extends StatelessWidget {
  const RecycleApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: ContentsScreen(
          text: "Activite",
        ),
      ),
    );
  }
}