import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:recycle_app/layouts/intro_layout.dart';
import 'package:recycle_app/components/sign_up_username_component.dart';

class SlideHorizontalComponent extends StatefulWidget {
  const SlideHorizontalComponent({ super.key });

  @override
  State<SlideHorizontalComponent> createState() => _StateSlideHorizontalComponent();
}

class _StateSlideHorizontalComponent extends State<SlideHorizontalComponent> {
  final ScrollController _scrollController = ScrollController();
  int _index = 0;
  final _maxIndex = 2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: _scrollController,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          _index++;
          if (_index > _maxIndex) {
            _index = _maxIndex;

            Get.to(const SignUpUsernameComponent());
          }

          _scrollController.animateTo(
            _index * size.width,
            duration: const Duration(seconds: 1),
            curve: Curves.elasticOut,
          );
        },
        child: Row(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: const IntroLayout(
                height: 200,
                fontSize: 25,
                bgImageAsset: "images/intro1.png",
                text: "서울시에서 재활용을 위해 배출된 쓰레기의 절반 이상이 분류되지 못하고 버려진다고 합니다.",
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: const IntroLayout(
                height: 200,
                fontSize: 25,
                bgImageAsset: "images/intro2.png",
                text: "이렇게 버려진 쓰기기는 토양, 수질, 해양 오염와 같이 심각한 환경 오염을 일으키고 기후 변화의 원인이 됩니다.",
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: const IntroLayout(
                height: 300,
                fontSize: 25,
                bgImageAsset: "images/intro3.png",
                text: "재활용은 자원 및 에너지 절약, 환경 오염 감소, 기후 변화 완화, 경제적 이점, 지역사회 발전, 그리고 쓰레기 처리 부담 감소를 가져오는 지속 가능한 환경 보호 방법입니다.",
              ),
            ),
          ],
        ),
      )
    );
   }
}