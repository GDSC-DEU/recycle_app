import 'package:flutter/material.dart';

class ContentsLayout extends StatefulWidget {
  final String listTitle;
  final String listContent;
  final String bgImageAsset;
  final double? fontSize;

  const ContentsLayout({
    super.key,
    required this.listContent,
    required this.listTitle,
    required this.bgImageAsset,
    this.fontSize,
  });

  @override
  State<ContentsLayout> createState() => _ContentsLayoutState();
}

class _ContentsLayoutState extends State<ContentsLayout> {
  @override
  Widget build(BuildContext context) {
    String title = widget.listTitle;
    String content = widget.listContent;

    return ListTile(
      leading: Container(
        child: Image.asset(widget.bgImageAsset),
      ),
      title: Text(widget.listTitle),
      subtitle: Text(widget.listContent),
    );
  }
}