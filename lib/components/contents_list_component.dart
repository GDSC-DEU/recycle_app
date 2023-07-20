import 'package:flutter/material.dart';

import 'package:recycle_app/layouts/contents_layout.dart';

class ContentsListComponent extends StatefulWidget {
  const ContentsListComponent({ super.key });

  @override
  State<ContentsListComponent> createState() => _StateContentsListComponent();
}


class _StateContentsListComponent extends State<ContentsListComponent> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(
        children: [
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "Supporting line text lorem ipsum dolor sit amet, consectetur.",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item1",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "Supporting line text lorem ipsum...",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item2",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item3",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item4",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item5",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item6",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item7",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item8",
            ),
          ),
          SizedBox(
            width: size.width,
            height: 110,
            child: const ContentsLayout(
              listContent: "come back home",
              fontSize: 25,
              bgImageAsset: "images/contentImage.png",
              listTitle: "List item9",
            ),
          ),
        ],
    );
  }
}