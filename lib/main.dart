import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recycle_app/firebase_options.dart';
import 'package:recycle_app/screens/answer_screen.dart';

import 'package:recycle_app/screens/intro_screen.dart';
import 'package:recycle_app/screens/sign_up_screen.dart';
import 'package:recycle_app/screens/point_screen.dart';
import 'package:recycle_app/screens/quiz_screen.dart';
import 'package:recycle_app/screens/reward_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const RecycleApp());
}

class RecycleApp extends StatelessWidget {
  const RecycleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
          // child: IntroScreen(),
          child: RewardScreen()),
    );
  }
}
