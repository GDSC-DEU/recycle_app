import 'package:flutter/material.dart';
import 'package:recycle_app/components/bottom_sheet_component.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Image.asset('images/recycle3.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 250),
              child: Center(
                child: Text(
                  "+ 1,000 Pt",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 38,
                  ),
                ),
              ),
            ),
            const BottomSheetComponent(),
          ],
        ),
      ),
    );
  }
}
