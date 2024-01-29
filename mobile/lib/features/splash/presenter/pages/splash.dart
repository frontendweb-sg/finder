import 'package:flutter/material.dart';
import 'package:mobile/config/theme/colors.dart';
import 'package:mobile/core/constants/images.dart';
import 'package:mobile/features/splash/presenter/widgets/section.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  final _pageController = PageController();
  String text =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.colorWhite,
        width: double.infinity,
        height: double.infinity,
        child: PageView(
          controller: _pageController,
          children: [
            SplashScreenSection(
              label: 'Find trusted company',
              image: AppImage.imgBusinessSvg,
              text: text,
            ),
            SplashScreenSection(
              label: 'Find your best job',
              image: AppImage.imgColoredSvg,
              text: text,
            ),
            SplashScreenSection(
              label: 'Easy online apply',
              image: AppImage.imgInterviewSvg,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
