import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpal/design/app_color.dart';
import 'package:healthpal/design/spaces.dart';
import 'package:healthpal/design/typography.dart';
import 'package:healthpal/feature/auth/domain/entities/on_board_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: _controller,
              itemCount: onBoardContent.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      onBoardContent[index].image,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      onBoardContent[index].title,
                      style: TxtStyles.semiBold18,
                    ),
                    spaceH8,
                    Text(
                      onBoardContent[index].discription,
                      style: TxtStyles.regular14,
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: onBoardContent.length,
                effect: WormEffect(
                    spacing: 16,
                    dotColor: AppColor.unActiveDot,
                    activeDotColor: AppColor.primary,
                    dotWidth: 16.r,
                    dotHeight: 16.r),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
