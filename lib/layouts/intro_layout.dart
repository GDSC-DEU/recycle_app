import 'package:flutter/material.dart';

class IntroLayout extends StatefulWidget {
  final double height;
  final String text;
  final String bgImageAsset;
  final double? fontSize;

  const IntroLayout({
    super.key,
    required this.height,
    required this.text,
    required this.bgImageAsset,
    this.fontSize,
  });

  @override
  State<IntroLayout> createState() => _IntroLayoutState(); 
}

class _IntroLayoutState extends State<IntroLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              widget.bgImageAsset,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              height: widget.height,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: widget.fontSize,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}