import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:mobile/config/theme/colors.dart';
import 'package:mobile/shared/widgets/typography.dart';

class SplashScreenSection extends StatelessWidget {
  const SplashScreenSection({
    super.key,
    required this.label,
    required this.image,
    required this.text,
  });

  final String label;
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText(
              label,
              color: AppColor.colorPrimary,
            ),
            const Gap(50),
            SizedBox(
              height: 250,
              child: image.endsWith('.svg')
                  ? SvgPicture.asset(image)
                  : Image.asset(image),
            ),
            const Gap(20),
            AppText(
              text,
              variant: TextVariant.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
