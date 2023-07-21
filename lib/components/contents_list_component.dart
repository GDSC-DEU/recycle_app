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

    return Stack(
      children: [
        ListView(
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
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Color(0xffEADDFF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.calendar_month,
                color: Colors.black
              ),
            ),
          ),
        ),
      ],
    );
  }
}