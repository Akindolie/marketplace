import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../common/app_colors.dart';

class SmallImagePreviewBox extends StatelessWidget {
  const SmallImagePreviewBox({
    super.key,
    required this.imageURL,
    required this.delay,
  });

  final String imageURL;
  final double delay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, //screenHeight(context) * 0.05,
      width: 50, //screenWidth(context) * 0.11,
      decoration: BoxDecoration(
        color: kcVeryLightGrey,
        borderRadius: BorderRadius.circular(5),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage(
        //     imageURL,
        //   ),
        // ),
      ),
      child: Image.asset(imageURL),
    ).animate().fade(duration: 500.ms).scale(delay: delay.ms);
  }
}
